; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_process.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32, i32, i32, %struct.msg_part*, %struct.msg_part* }
%struct.msg_part = type { i32, i32, %struct.msg_part*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_process(%struct.raw_message* %0, i32 %1, void (i8*, i8*, i32)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.raw_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msg_part*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*, i8*, i32)* %2, void (i8*, i8*, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %20 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %25 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %124

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %34 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %33, i32 0, i32 4
  %35 = load %struct.msg_part*, %struct.msg_part** %34, align 8
  %36 = icmp ne %struct.msg_part* %35, null
  br i1 %36, label %37, label %122

37:                                               ; preds = %31
  %38 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %39 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %38, i32 0, i32 4
  %40 = load %struct.msg_part*, %struct.msg_part** %39, align 8
  store %struct.msg_part* %40, %struct.msg_part** %11, align 8
  br label %41

41:                                               ; preds = %98, %37
  %42 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %43 = icmp ne %struct.msg_part* %42, null
  br i1 %43, label %44, label %116

44:                                               ; preds = %41
  %45 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %46 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %47 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %46, i32 0, i32 4
  %48 = load %struct.msg_part*, %struct.msg_part** %47, align 8
  %49 = icmp eq %struct.msg_part* %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %52 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %56 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %12, align 4
  %60 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %61 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %62 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %61, i32 0, i32 3
  %63 = load %struct.msg_part*, %struct.msg_part** %62, align 8
  %64 = icmp eq %struct.msg_part* %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.raw_message*, %struct.raw_message** %6, align 8
  %67 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %68, %69
  br label %81

71:                                               ; preds = %58
  %72 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %73 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %76 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %74, %77
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %78, %79
  br label %81

81:                                               ; preds = %71, %65
  %82 = phi i32 [ %70, %65 ], [ %80, %71 ]
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %90 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr i8, i8* %93, i64 %95
  %97 = load i32, i32* %7, align 4
  call void %87(i8* %88, i8* %96, i32 %97)
  store i32 0, i32* %7, align 4
  br label %116

98:                                               ; preds = %81
  %99 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %102 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %105, i64 %107
  %109 = load i32, i32* %13, align 4
  call void %99(i8* %100, i8* %108, i32 %109)
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.msg_part*, %struct.msg_part** %11, align 8
  %114 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %113, i32 0, i32 2
  %115 = load %struct.msg_part*, %struct.msg_part** %114, align 8
  store %struct.msg_part* %115, %struct.msg_part** %11, align 8
  br label %41

116:                                              ; preds = %86, %41
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  br label %122

122:                                              ; preds = %116, %31
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %30
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
