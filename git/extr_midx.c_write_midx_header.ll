; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_write_midx_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_write_midx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }

@MIDX_SIGNATURE = common dso_local global i32 0, align 4
@MIDX_VERSION = common dso_local global i8 0, align 1
@MIDX_HASH_VERSION = common dso_local global i8 0, align 1
@MIDX_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, i8, i32)* @write_midx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_midx_header(%struct.hashfile* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %9 = load i32, i32* @MIDX_SIGNATURE, align 4
  %10 = call i32 @hashwrite_be32(%struct.hashfile* %8, i32 %9)
  %11 = load i8, i8* @MIDX_VERSION, align 1
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %11, i8* %12, align 1
  %13 = load i8, i8* @MIDX_HASH_VERSION, align 1
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %13, i8* %14, align 1
  %15 = load i8, i8* %5, align 1
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 0, i8* %17, align 1
  %18 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %20 = call i32 @hashwrite(%struct.hashfile* %18, i8* %19, i32 4)
  %21 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @hashwrite_be32(%struct.hashfile* %21, i32 %22)
  %24 = load i64, i64* @MIDX_HEADER_SIZE, align 8
  ret i64 %24
}

declare dso_local i32 @hashwrite_be32(%struct.hashfile*, i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
