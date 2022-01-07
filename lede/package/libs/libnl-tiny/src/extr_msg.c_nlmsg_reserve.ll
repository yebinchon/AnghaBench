; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_reserve.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nlmsg_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"msg %p: Reserved %zu bytes, pad=%d, nlmsg_len=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nlmsg_reserve(%struct.nl_msg* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nl_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %12 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = bitcast %struct.TYPE_2__* %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %16 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = add i64 %23, %26
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %27, %31
  br label %35

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  br label %35

35:                                               ; preds = %33, %22
  %36 = phi i64 [ %32, %22 ], [ %34, %33 ]
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %41 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i8* null, i8** %4, align 8
  br label %78

45:                                               ; preds = %35
  %46 = load i64, i64* %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr i8, i8* %47, i64 %46
  store i8* %48, i8** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %51 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %49
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr i8, i8* %60, i64 %61
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @memset(i8* %62, i32 0, i64 %65)
  br label %67

67:                                               ; preds = %59, %45
  %68 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %72 = getelementptr inbounds %struct.nl_msg, %struct.nl_msg* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @NL_DBG(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.nl_msg* %68, i64 %69, i32 %70, i64 %75)
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %67, %44
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_msg*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
