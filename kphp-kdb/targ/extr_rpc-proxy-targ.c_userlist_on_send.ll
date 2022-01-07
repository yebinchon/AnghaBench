; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_userlist_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_userlist_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32 }

@Q_userlist = common dso_local global i32 0, align 4
@Qs = common dso_local global i32* null, align 8
@QBefore = common dso_local global i32 0, align 4
@QBeforeSize = common dso_local global i32 0, align 4
@Qf = common dso_local global i32* null, align 8
@Q = common dso_local global i32* null, align 8
@QN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userlist_on_send(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gather*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gather* %0, %struct.gather** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @Q_userlist, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.gather*, %struct.gather** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @default_gather_on_send(%struct.gather* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %66

14:                                               ; preds = %2
  %15 = load i32*, i32** @Qs, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %66

22:                                               ; preds = %14
  %23 = load i32, i32* @QBefore, align 4
  %24 = load i32, i32* @QBeforeSize, align 4
  %25 = call i32 @tl_store_raw_data(i32 %23, i32 %24)
  %26 = load i32*, i32** @Qf, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %31 = load i32*, i32** @Qs, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tl_store_int(i32 %35)
  br label %37

37:                                               ; preds = %40, %22
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32*, i32** @Q, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tl_store_int(i32 %45)
  %47 = load i32*, i32** @QN, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** @Qs, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %55, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call i32 (...) @tl_fetch_unread()
  %65 = call i32 @tl_copy_through(i32 %64, i32 0)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %54, %21, %10
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @default_gather_on_send(%struct.gather*, i32) #1

declare dso_local i32 @tl_store_raw_data(i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_copy_through(i32, i32) #1

declare dso_local i32 @tl_fetch_unread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
