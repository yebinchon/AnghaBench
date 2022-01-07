; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_read_binary_header.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_load.c_read_binary_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rite_binary_header = type { i32, i32, i32 }

@RITE_BINARY_IDENT = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_NATIVE = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_BIG = common dso_local global i32 0, align 4
@RITE_BINARY_IDENT_LIL = common dso_local global i32 0, align 4
@FLAG_BYTEORDER_LIL = common dso_local global i32 0, align 4
@MRB_DUMP_INVALID_FILE_HEADER = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32*, i32*)* @read_binary_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_binary_header(i32* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rite_binary_header*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to %struct.rite_binary_header*
  store %struct.rite_binary_header* %12, %struct.rite_binary_header** %10, align 8
  %13 = load %struct.rite_binary_header*, %struct.rite_binary_header** %10, align 8
  %14 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RITE_BINARY_IDENT, align 4
  %17 = call i64 @memcmp(i32 %15, i32 %16, i32 4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = call i64 (...) @bigendian_p()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @FLAG_BYTEORDER_NATIVE, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @FLAG_BYTEORDER_BIG, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %22
  br label %57

33:                                               ; preds = %4
  %34 = load %struct.rite_binary_header*, %struct.rite_binary_header** %10, align 8
  %35 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RITE_BINARY_IDENT_LIL, align 4
  %38 = call i64 @memcmp(i32 %36, i32 %37, i32 4)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = call i64 (...) @bigendian_p()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @FLAG_BYTEORDER_LIL, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @FLAG_BYTEORDER_NATIVE, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @MRB_DUMP_INVALID_FILE_HEADER, align 4
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.rite_binary_header*, %struct.rite_binary_header** %10, align 8
  %62 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bin_to_uint16(i32 %63)
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.rite_binary_header*, %struct.rite_binary_header** %10, align 8
  %68 = getelementptr inbounds %struct.rite_binary_header, %struct.rite_binary_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @bin_to_uint32(i32 %69)
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @MRB_DUMP_OK, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %54
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @bigendian_p(...) #1

declare dso_local i32 @bin_to_uint16(i32) #1

declare dso_local i64 @bin_to_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
