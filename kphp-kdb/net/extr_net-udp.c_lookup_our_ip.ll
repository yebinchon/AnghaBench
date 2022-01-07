; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_lookup_our_ip.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_lookup_our_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@used_our_ip = common dso_local global i32 0, align 4
@our_ip = common dso_local global i32* null, align 8
@our_ipv6 = common dso_local global i32* null, align 8
@MAX_OUR_IPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_our_ip(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 2, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @used_our_ip, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i32*, i32** @our_ip, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* @used_our_ip, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  store i32 2, i32* @used_our_ip, align 4
  %27 = load i32*, i32** @our_ip, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 2130706433, i32* %28, align 4
  %29 = load i32*, i32** @our_ipv6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @our_ip, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @set_4in6(i32 %31, i32 %34)
  %36 = call i32 @fill_outbound_control(i32 2)
  %37 = load i32*, i32** @our_ip, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 2, i32* %2, align 4
  br label %69

43:                                               ; preds = %26
  br label %51

44:                                               ; preds = %23
  %45 = load i32, i32* @used_our_ip, align 4
  %46 = load i32, i32* @MAX_OUR_IPS, align 4
  %47 = sub nsw i32 %46, 2
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %69

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* @used_our_ip, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* @used_our_ip, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32*, i32** @our_ip, align 8
  %56 = load i32, i32* @used_our_ip, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32*, i32** @our_ipv6, align 8
  %60 = load i32, i32* @used_our_ip, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @set_4in6(i32 %63, i32 %64)
  %66 = load i32, i32* @used_our_ip, align 4
  %67 = call i32 @fill_outbound_control(i32 %66)
  %68 = load i32, i32* @used_our_ip, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %51, %49, %42, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @set_4in6(i32, i32) #1

declare dso_local i32 @fill_outbound_control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
