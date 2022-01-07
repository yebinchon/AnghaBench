; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_conv_ip.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_conv_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ip_buff = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conv_ip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %32, %0
  %9 = load i8*, i8** @ip_buff, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 20
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i1 [ false, %8 ], [ %18, %16 ]
  br i1 %20, label %21, label %35

21:                                               ; preds = %19
  %22 = load i8*, i8** @ip_buff, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %8

35:                                               ; preds = %19
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i32 (...) @ipv6_to_ipv4()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  br label %121

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %35
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %98, %43
  %45 = load i8*, i8** @ip_buff, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 20
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi i1 [ false, %44 ], [ %54, %52 ]
  br i1 %56, label %57, label %101

57:                                               ; preds = %55
  %58 = load i8*, i8** @ip_buff, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %7, align 1
  %63 = load i8, i8* %7, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %121

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %74
  store i32 %71, i32* %75, align 4
  store i32 0, i32* %6, align 4
  br label %97

76:                                               ; preds = %57
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 48, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i8, i8* %7, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sle i32 %82, 57
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 10
  %87 = load i8, i8* %7, align 1
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = sub nsw i32 %89, 48
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 255
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 0, i32* %1, align 4
  br label %121

94:                                               ; preds = %84
  br label %96

95:                                               ; preds = %80, %76
  store i32 0, i32* %1, align 4
  br label %121

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %70
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %44

101:                                              ; preds = %55
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %105
  store i32 %102, i32* %106, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = shl i32 %108, 24
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %109, %112
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 8
  %117 = or i32 %113, %116
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %117, %119
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %101, %95, %93, %69, %41
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32 @ipv6_to_ipv4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
