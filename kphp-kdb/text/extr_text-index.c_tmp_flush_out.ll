; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_flush_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_tmp_flush_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buff_file = type { i32, i32, i8*, i32, i32 }

@TEMP_WRITE_BUFFER_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cannot write %d bytes to temporary file %s: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"cannot write %d bytes to temporary file %s: only %d bytes written\0A\00", align 1
@tmp_bytes_written = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"%d bytes written to temporary file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmp_flush_out(%struct.buff_file* %0) #0 {
  %2 = alloca %struct.buff_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.buff_file* %0, %struct.buff_file** %2, align 8
  %6 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %7 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %10 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %17 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %20 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %118

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TEMP_WRITE_BUFFER_SIZE, align 4
  %27 = icmp sle i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %33 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %36 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @write(i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %48 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %51 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @write(i32 %49, i32 %54, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %62, %63
  br label %67

65:                                               ; preds = %46
  %66 = load i32, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i32 [ %64, %61 ], [ %66, %65 ]
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %43
  br label %70

70:                                               ; preds = %69, %28
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %81 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %82)
  br label %92

84:                                               ; preds = %74
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %88 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %77
  %93 = call i32 @close_temp_files(i32 3)
  %94 = call i32 @exit(i32 3) #3
  unreachable

95:                                               ; preds = %70
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %98 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @tmp_bytes_written, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* @tmp_bytes_written, align 4
  %104 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %105 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %108 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i64, i64* @verbosity, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %95
  %112 = load i32, i32* @stderr, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.buff_file*, %struct.buff_file** %2, align 8
  %115 = getelementptr inbounds %struct.buff_file, %struct.buff_file* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %113, i8* %116)
  br label %118

118:                                              ; preds = %15, %111, %95
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @close_temp_files(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
