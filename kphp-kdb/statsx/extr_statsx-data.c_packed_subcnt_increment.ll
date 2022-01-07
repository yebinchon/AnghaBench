; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_packed_subcnt_increment.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_packed_subcnt_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i64, i32* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"packed_subcnt_increment(c = %p, idx = %d, delta = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"c->mask_subcnt = %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"c->subcnt = \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packed_subcnt_increment(%struct.counter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.counter* %0, %struct.counter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 1, i64* %12, align 8
  %14 = load i32, i32* @verbosity, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.counter*, %struct.counter** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.counter* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.counter*, %struct.counter** %5, align 8
  %24 = getelementptr inbounds %struct.counter, %struct.counter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %16, %3
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %12, align 8
  %30 = zext i32 %28 to i64
  %31 = shl i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.counter*, %struct.counter** %5, align 8
  %34 = getelementptr inbounds %struct.counter, %struct.counter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %32, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %27
  %39 = load %struct.counter*, %struct.counter** %5, align 8
  %40 = getelementptr inbounds %struct.counter, %struct.counter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %55, %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub i64 %44, 1
  %46 = and i64 %43, %45
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = xor i64 %48, %49
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %58

53:                                               ; preds = %42
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %42

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.counter*, %struct.counter** %5, align 8
  %61 = getelementptr inbounds %struct.counter, %struct.counter* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %59
  store i32 %67, i32* %65, align 4
  store i32 %67, i32* %4, align 4
  br label %183

68:                                               ; preds = %27
  %69 = load %struct.counter*, %struct.counter** %5, align 8
  %70 = getelementptr inbounds %struct.counter, %struct.counter* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %10, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %89, %68
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %77, 1
  %79 = and i64 %76, %78
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = xor i64 %81, %82
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %75
  %88 = load i64, i64* %11, align 8
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %87
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = trunc i64 %96 to i32
  %98 = call i64 @zzmalloc(i32 %97)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %13, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %92
  %109 = load i32*, i32** %13, align 8
  %110 = load %struct.counter*, %struct.counter** %5, align 8
  %111 = getelementptr inbounds %struct.counter, %struct.counter* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32* %109, i32* %112, i32 %117)
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load %struct.counter*, %struct.counter** %5, align 8
  %125 = getelementptr inbounds %struct.counter, %struct.counter* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  %134 = sub nsw i32 %131, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i32* %123, i32* %130, i32 %137)
  %139 = load %struct.counter*, %struct.counter** %5, align 8
  %140 = getelementptr inbounds %struct.counter, %struct.counter* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 4, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @zzfree(i32* %141, i32 %145)
  br label %147

147:                                              ; preds = %108, %92
  %148 = load i32*, i32** %13, align 8
  %149 = load %struct.counter*, %struct.counter** %5, align 8
  %150 = getelementptr inbounds %struct.counter, %struct.counter* %149, i32 0, i32 1
  store i32* %148, i32** %150, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load %struct.counter*, %struct.counter** %5, align 8
  %153 = getelementptr inbounds %struct.counter, %struct.counter* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = or i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load i32, i32* @verbosity, align 4
  %157 = icmp sge i32 %156, 4
  br i1 %157, label %158, label %181

158:                                              ; preds = %147
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %175, %158
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i32, i32* @stderr, align 4
  %167 = load %struct.counter*, %struct.counter** %5, align 8
  %168 = getelementptr inbounds %struct.counter, %struct.counter* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %161

178:                                              ; preds = %161
  %179 = load i32, i32* @stderr, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %147
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %181, %58
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @zzmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @zzfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
