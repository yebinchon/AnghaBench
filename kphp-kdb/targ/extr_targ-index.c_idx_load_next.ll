; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_load_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_load_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBuffEnd = common dso_local global i32 0, align 4
@RBuff = common dso_local global i32 0, align 4
@idx_bytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed at pos %lld, ends at %lld bytes, need %d\0A\00", align 1
@idx_rptr = common dso_local global i32 0, align 4
@idx_wptr = common dso_local global i32 0, align 4
@idx_fd = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"error reading %d bytes from snapshot %s at position %lld: only %d bytes read: %m\0A\00", align 1
@idx_filename = common dso_local global i8* null, align 8
@idx_read_pos = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"preloaded %d bytes from snapshot at position %lld\0A\00", align 1
@idx_metafile_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idx_load_next(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RBuffEnd, align 4
  %13 = load i32, i32* @RBuff, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp sle i32 %11, %14
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ false, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i64 (...) @idx_cur_read_pos()
  store i64 %20, i64* %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @idx_bytes, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %16
  %29 = load i32, i32* @idx_bytes, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = sub nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @idx_bytes, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %155

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32, i32* @idx_rptr, align 4
  %48 = load i32, i32* @RBuff, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* @idx_rptr, align 4
  %52 = load i32, i32* @idx_wptr, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @idx_wptr, align 4
  %56 = load i32, i32* @RBuffEnd, align 4
  %57 = icmp sle i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50, %46
  %59 = phi i1 [ false, %50 ], [ false, %46 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* @idx_wptr, align 4
  %63 = load i32, i32* @idx_rptr, align 4
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @idx_wptr, align 4
  %69 = load i32, i32* @idx_rptr, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %2, align 4
  br label %155

71:                                               ; preds = %58
  %72 = load i32, i32* @idx_rptr, align 4
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @RBuffEnd, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = call i32 (...) @idx_slide_read_buffer()
  %79 = load i32, i32* @idx_rptr, align 4
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* @RBuffEnd, align 4
  %83 = icmp sle i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %77, %71
  %87 = load i32, i32* @RBuffEnd, align 4
  %88 = load i32, i32* @idx_wptr, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load i64, i64* %4, align 8
  %91 = load i32, i32* @idx_wptr, align 4
  %92 = load i32, i32* @idx_rptr, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %90, %94
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i32, i32* @idx_bytes, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp sgt i64 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %86
  %104 = load i32, i32* @idx_bytes, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %6, align 8
  %107 = sub nsw i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %86
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* @idx_fd, align 4
  %115 = load i32, i32* @idx_wptr, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @read(i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %109
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i8*, i8** @idx_filename, align 8
  %125 = load i32, i32* @idx_read_pos, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %123, i8* %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  br label %142

133:                                              ; preds = %109
  %134 = load i32, i32* @verbosity, align 4
  %135 = icmp sgt i32 %134, 3
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @idx_read_pos, align 4
  %140 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %121
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @idx_wptr, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* @idx_wptr, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @idx_read_pos, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* @idx_read_pos, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @idx_metafile_pos, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* @idx_metafile_pos, align 4
  %152 = load i32, i32* @idx_wptr, align 4
  %153 = load i32, i32* @idx_rptr, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %142, %67, %40
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @idx_cur_read_pos(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @idx_slide_read_buffer(...) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
