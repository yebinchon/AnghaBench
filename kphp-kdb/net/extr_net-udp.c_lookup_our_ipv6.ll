; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_lookup_our_ipv6.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_lookup_our_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@used_our_ipv6 = common dso_local global i32 0, align 4
@our_ipv6 = common dso_local global i32** null, align 8
@MAX_OUR_IPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_our_ipv6(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @used_our_ipv6, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i32**, i32*** @our_ipv6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @memcmp(i32* %14, i8* %15, i32 16)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %61

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load i32, i32* @used_our_ipv6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  store i32 1, i32* @used_our_ipv6, align 4
  %28 = load i32**, i32*** @our_ipv6, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 15
  store i32 1, i32* %31, align 4
  %32 = call i32 @fill_outbound_control(i32 1)
  %33 = load i32**, i32*** @our_ipv6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @memcmp(i32* %35, i8* %36, i32 16)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %61

40:                                               ; preds = %27
  br label %48

41:                                               ; preds = %24
  %42 = load i32, i32* @used_our_ipv6, align 4
  %43 = load i32, i32* @MAX_OUR_IPS, align 4
  %44 = sub nsw i32 %43, 2
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %61

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* @used_our_ipv6, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* @used_our_ipv6, align 4
  %51 = load i32**, i32*** @our_ipv6, align 8
  %52 = load i32, i32* @used_our_ipv6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @memcpy(i32* %55, i8* %56, i32 16)
  %58 = load i32, i32* @used_our_ipv6, align 4
  %59 = call i32 @fill_outbound_control(i32 %58)
  %60 = load i32, i32* @used_our_ipv6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %48, %46, %39, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @fill_outbound_control(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
