; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_update_binlog_buffer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_update_binlog_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BINLOG_POSITION = common dso_local global i64 0, align 8
@BINLOG_BUFFER_WPTR = common dso_local global i64 0, align 8
@BINLOG_BUFFER_FPTR = common dso_local global i64 0, align 8
@BINLOG_BUFFER_SIZE = common dso_local global i64 0, align 8
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@BINLOG_BUFFER_FD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@BINLOG_BUFFER = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"read %lld bytes of replicating file\0A\00", align 1
@BINLOG_BUFFER_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_binlog_buffer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @BINLOG_POSITION, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp sgt i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %10 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* @BINLOG_POSITION, align 8
  %15 = load i64, i64* %2, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* @BINLOG_POSITION, align 8
  %18 = load i64, i64* %2, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %1
  %23 = call i64 (...) @get_double_time_since_epoch()
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %23
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %32 = load i64, i64* @BINLOG_POSITION, align 8
  %33 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i32, i32* @SEEK_SET, align 4
  %36 = call i64 @lseek(i32 %31, i64 %34, i32 %35)
  %37 = load i64, i64* @BINLOG_POSITION, align 8
  %38 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %39 = sub nsw i64 %37, %38
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %44 = load i64, i64* @BINLOG_BUFFER, align 8
  %45 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %46 = call i64 @read(i32 %43, i64 %44, i64 %45)
  %47 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = call i64 (...) @get_double_time_since_epoch()
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i32, i32* @verbosity, align 4
  %60 = icmp sge i32 %59, 4
  br i1 %60, label %61, label %65

61:                                               ; preds = %22
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %64 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %61, %22
  %66 = load i64, i64* @BINLOG_BUFFER, align 8
  %67 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* @BINLOG_BUFFER_WPTR, align 8
  %69 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  store i64 %69, i64* @BINLOG_BUFFER_FPTR, align 8
  br label %147

70:                                               ; preds = %1
  %71 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* @BINLOG_BUFFER_END, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %70
  %77 = load i64, i64* @BINLOG_BUFFER, align 8
  %78 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %79 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %80 = load i64, i64* %3, align 8
  %81 = sub nsw i64 %79, %80
  %82 = sub nsw i64 %78, %81
  %83 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %84 = load i64, i64* %3, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @memcpy(i64 %77, i64 %82, i64 %85)
  %87 = call i64 (...) @get_double_time_since_epoch()
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load i64, i64* @BINLOG_BUFFER, align 8
  %96 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %97 = load i64, i64* %3, align 8
  %98 = sub nsw i64 %96, %97
  %99 = add nsw i64 %95, %98
  store i64 %99, i64* @BINLOG_BUFFER_WPTR, align 8
  %100 = load i64, i64* @BINLOG_BUFFER, align 8
  %101 = load i64, i64* @BINLOG_BUFFER_SIZE, align 8
  %102 = load i64, i64* %3, align 8
  %103 = sub nsw i64 %101, %102
  %104 = add nsw i64 %100, %103
  store i64 %104, i64* @BINLOG_BUFFER_FPTR, align 8
  %105 = call i64 (...) @get_double_time_since_epoch()
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %105
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  br label %113

113:                                              ; preds = %76, %70
  %114 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %115 = load i64, i64* @BINLOG_POSITION, align 8
  %116 = load i64, i64* %3, align 8
  %117 = sub nsw i64 %115, %116
  %118 = load i32, i32* @SEEK_SET, align 4
  %119 = call i64 @lseek(i32 %114, i64 %117, i32 %118)
  %120 = load i64, i64* @BINLOG_POSITION, align 8
  %121 = load i64, i64* %3, align 8
  %122 = sub nsw i64 %120, %121
  %123 = icmp eq i64 %119, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %127 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %128 = load i64, i64* %3, align 8
  %129 = call i64 @read(i32 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %3, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* @BINLOG_BUFFER_WPTR, align 8
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* @BINLOG_BUFFER_FPTR, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* @BINLOG_BUFFER_FPTR, align 8
  %140 = load i32, i32* @verbosity, align 4
  %141 = icmp sge i32 %140, 4
  br i1 %141, label %142, label %146

142:                                              ; preds = %113
  %143 = load i32, i32* @stderr, align 4
  %144 = load i64, i64* %3, align 8
  %145 = call i32 @fprintf(i32 %143, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %142, %113
  br label %147

147:                                              ; preds = %146, %65
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_double_time_since_epoch(...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
