; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_import_lev_start.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_import_lev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i32*, i8*, i8*, i32, i32, i32 }

@LEV_START = common dso_local global i32 0, align 4
@STORAGE_SCHEMA_V1 = common dso_local global i32 0, align 4
@split_modulo = common dso_local global i32 0, align 4
@split_rem = common dso_local global i8* null, align 8
@volume_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @import_lev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @import_lev_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lev_start*, align 8
  store i32 0, i32* %1, align 4
  %3 = call %struct.lev_start* @malloc(i32 36)
  store %struct.lev_start* %3, %struct.lev_start** %2, align 8
  %4 = load i32, i32* @LEV_START, align 4
  %5 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %6 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %5, i32 0, i32 6
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @STORAGE_SCHEMA_V1, align 4
  %8 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %9 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %11 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %10, i32 0, i32 0
  store i32 12, i32* %11, align 8
  %12 = load i32, i32* @split_modulo, align 4
  %13 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %14 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** @split_rem, align 8
  %16 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %17 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @split_rem, align 8
  %19 = getelementptr i8, i8* %18, i64 1
  %20 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %21 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %23 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @memcpy(i32* %24, i32* @volume_id, i32 8)
  %26 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %27 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = call i32 @memcpy(i32* %29, i32* %1, i32 4)
  %31 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %32 = call i32 @binlog_write(%struct.lev_start* %31, i32 36)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.lev_start*, %struct.lev_start** %2, align 8
  %38 = call i32 @free(%struct.lev_start* %37)
  ret void
}

declare dso_local %struct.lev_start* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @binlog_write(%struct.lev_start*, i32) #1

declare dso_local i32 @free(%struct.lev_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
