; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_count_crc32_back_partial.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_count_crc32_back_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"**ERROR** len=%d total_bytes=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_crc32_back_partial(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = icmp ne %struct.TYPE_3__* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %7, align 8
  br label %56

56:                                               ; preds = %52, %48, %35
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  br label %77

73:                                               ; preds = %60
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi i64 [ %72, %68 ], [ %76, %73 ]
  %79 = sub nsw i64 %63, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %7, align 8
  br label %90

90:                                               ; preds = %86, %77
  br label %57

91:                                               ; preds = %57
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  br label %105

105:                                              ; preds = %101, %96
  %106 = phi i64 [ %100, %96 ], [ %104, %101 ]
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %106, %108
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  br label %127

123:                                              ; preds = %105
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i64 [ %122, %118 ], [ %126, %123 ]
  %129 = sub nsw i64 %113, %128
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @crc32_partial(i32 %110, i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %7, align 8
  br label %139

139:                                              ; preds = %176, %127
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = icmp ne %struct.TYPE_3__* %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %139
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  br label %157

153:                                              ; preds = %143
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  br label %157

157:                                              ; preds = %153, %148
  %158 = phi i64 [ %152, %148 ], [ %156, %153 ]
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %157
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  br label %176

172:                                              ; preds = %157
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  br label %176

176:                                              ; preds = %172, %167
  %177 = phi i64 [ %171, %167 ], [ %175, %172 ]
  %178 = sub nsw i64 %162, %177
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @crc32_partial(i32 %159, i32 %179, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  store %struct.TYPE_3__* %184, %struct.TYPE_3__** %7, align 8
  br label %139

185:                                              ; preds = %139
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crc32_partial(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
