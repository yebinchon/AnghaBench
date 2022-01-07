; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_write_binlog_headers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_write_binlog_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32 }

@KHDR = common dso_local global %struct.TYPE_3__* null, align 8
@tot_crc32 = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i64 0, align 8
@targ_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@binlog_headers = common dso_local global i32 0, align 4
@kfs_Hdr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_binlog_headers() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %55

5:                                                ; preds = %0
  %6 = call i32 @time(i32 0)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @tot_crc32, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @wr_bytes, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i64, i64* @wr_bytes, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KHDR, align 8
  %34 = call i32 @fix_kfs_header_crc32(%struct.TYPE_3__* %33)
  %35 = load i32, i32* @targ_fd, align 4
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i64 @lseek(i32 %35, i32 0, i32 %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %52, %5
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @binlog_headers, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* @targ_fd, align 4
  %47 = load i32, i32* @kfs_Hdr, align 4
  %48 = call i32 @write(i32 %46, i32 %47, i32 4096)
  %49 = icmp eq i32 %48, 4096
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %41

55:                                               ; preds = %4, %41
  ret void
}

declare dso_local i32 @time(i32) #1

declare dso_local i32 @fix_kfs_header_crc32(%struct.TYPE_3__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
