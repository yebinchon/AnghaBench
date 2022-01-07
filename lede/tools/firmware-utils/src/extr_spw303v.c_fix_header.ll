; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_spw303v.c_fix_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_spw303v.c_fix_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spw303v_tag = type { i32, i32, i32, i32 }

@IMAGETAG_MAGIC1_TCOM = common dso_local global i32* null, align 8
@fake_data = common dso_local global i8* null, align 8
@IMAGETAG_CRC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spw303v_tag*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.spw303v_tag*
  store %struct.spw303v_tag* %6, %struct.spw303v_tag** %3, align 8
  %7 = load %struct.spw303v_tag*, %struct.spw303v_tag** %3, align 8
  %8 = getelementptr inbounds %struct.spw303v_tag, %struct.spw303v_tag* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @memset(i32 %9, i32 0, i32 20)
  %11 = load %struct.spw303v_tag*, %struct.spw303v_tag** %3, align 8
  %12 = getelementptr inbounds %struct.spw303v_tag, %struct.spw303v_tag* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @IMAGETAG_MAGIC1_TCOM, align 8
  %15 = load i32*, i32** @IMAGETAG_MAGIC1_TCOM, align 8
  %16 = call i32 @strlen(i32* %15)
  %17 = call i32 @memcpy(i32 %13, i32* %14, i32 %16)
  %18 = load %struct.spw303v_tag*, %struct.spw303v_tag** %3, align 8
  %19 = getelementptr inbounds %struct.spw303v_tag, %struct.spw303v_tag* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memset(i32 %20, i32 0, i32 74)
  %22 = load %struct.spw303v_tag*, %struct.spw303v_tag** %3, align 8
  %23 = getelementptr inbounds %struct.spw303v_tag, %struct.spw303v_tag* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i8*, i8** @fake_data, align 8
  %28 = call i32 @crc32(i32 %26, i8* %27, i32 64)
  %29 = call i32 @htonl(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.spw303v_tag*, %struct.spw303v_tag** %3, align 8
  %31 = getelementptr inbounds %struct.spw303v_tag, %struct.spw303v_tag* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %32, i32* %4, i32 4)
  %34 = load i32, i32* @IMAGETAG_CRC_START, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @crc32(i32 %34, i8* %35, i32 236)
  %37 = call i32 @htonl(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.spw303v_tag*, %struct.spw303v_tag** %3, align 8
  %39 = getelementptr inbounds %struct.spw303v_tag, %struct.spw303v_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %40, i32* %4, i32 4)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
