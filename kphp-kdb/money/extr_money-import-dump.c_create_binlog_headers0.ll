; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_create_binlog_headers0.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_create_binlog_headers0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32 }

@binlog_headers = common dso_local global i32 0, align 4
@KHDR = common dso_local global %struct.TYPE_6__* null, align 8
@stdout_mode = common dso_local global i64 0, align 8
@kfs_Hdr = common dso_local global %struct.TYPE_6__* null, align 8
@kfs_binlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"money\00", align 1
@split_mod = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"money%03d\00", align 1
@split_min = common dso_local global i32 0, align 4
@default_progname = common dso_local global i8* null, align 8
@split_max = common dso_local global i32 0, align 4
@targ_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_binlog_headers0(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @binlog_headers, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @stdout_mode, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %140

18:                                               ; preds = %11
  store i32 2, i32* @binlog_headers, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kfs_Hdr, align 8
  %20 = call i32 @create_kfs_header_basic(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kfs_Hdr, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** @KHDR, align 8
  %22 = load i32, i32* @kfs_binlog, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 21
  store i32 %22, i32* %24, align 4
  %25 = call i32 @time(i32 0)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = call i8* (...) @kfs_random_hash()
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 19
  store i8* %32, i8** %34, align 8
  %35 = call i8* (...) @kfs_random_hash()
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 17
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 18
  store i8* %35, i8** %39, align 8
  %40 = call i32 @kfs_string_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 16
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @split_mod, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %18
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @split_min, align 4
  %54 = call i32 @sprintf(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %60

55:                                               ; preds = %18
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 8192, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 12
  store i32 %65, i32* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 13
  store i32 %65, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** @default_progname, align 8
  %78 = call i32 @strcpy(i32 %76, i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** @default_progname, align 8
  %83 = call i32 @strcpy(i32 %81, i8* %82)
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %60
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 512
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i32 512, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %89
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %104, i8* %105, i32 %108)
  br label %110

110:                                              ; preds = %101, %60
  %111 = load i32, i32* @split_mod, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @split_min, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @split_max, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KHDR, align 8
  %121 = call i32 @fix_kfs_header_crc32(%struct.TYPE_6__* %120)
  %122 = load i32, i32* @targ_fd, align 4
  %123 = load i32, i32* @SEEK_SET, align 4
  %124 = call i64 @lseek(i32 %122, i32 0, i32 %123)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* @targ_fd, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kfs_Hdr, align 8
  %130 = call i32 @write(i32 %128, %struct.TYPE_6__* %129, i32 4096)
  %131 = icmp eq i32 %130, 4096
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* @targ_fd, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kfs_Hdr, align 8
  %136 = call i32 @write(i32 %134, %struct.TYPE_6__* %135, i32 4096)
  %137 = icmp eq i32 %136, 4096
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %110, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_kfs_header_basic(%struct.TYPE_6__*) #1

declare dso_local i32 @time(i32) #1

declare dso_local i8* @kfs_random_hash(...) #1

declare dso_local i32 @kfs_string_hash(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fix_kfs_header_crc32(%struct.TYPE_6__*) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
