; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils.c_dl_log_dump_to_buf.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils.c_dl_log_dump_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32* }

@LOG_ID_MX = common dso_local global i32 0, align 4
@dl_log = common dso_local global %struct.TYPE_2__* null, align 8
@DL_LOG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_log_dump_to_buf(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 0, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LOG_ID_MX, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %6
  %25 = phi i1 [ false, %6 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dl_log, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %117, %24
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %13, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @DL_LOG_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dl_log, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %15, align 1
  %52 = load i8, i8* %15, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %119

59:                                               ; preds = %41
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dl_log, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %60, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %59
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dl_log, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %72
  %86 = load i8, i8* %15, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %119

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i8, i8* %15, align 1
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %96, i8* %101, align 1
  br label %102

102:                                              ; preds = %95, %72, %59
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dl_log, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %114, %115
  br label %117

117:                                              ; preds = %112, %103
  %118 = phi i1 [ false, %103 ], [ %116, %112 ]
  br i1 %118, label %34, label %119

119:                                              ; preds = %117, %93, %58
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 0, i8* %123, align 1
  store i32 0, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %130, %119
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  store i8 %135, i8* %17, align 1
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 %140, i8* %144, align 1
  %145 = load i8, i8* %17, align 1
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8 %145, i8* %149, align 1
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %16, align 4
  br label %126

154:                                              ; preds = %126
  %155 = load i32, i32* %14, align 4
  ret i32 %155
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
