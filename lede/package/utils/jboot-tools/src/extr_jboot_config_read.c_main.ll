; ModuleID = '/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_header = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@MAX_DATA_HEADER = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@config_size = common dso_local global i64 0, align 8
@progname = common dso_local global i32 0, align 4
@start_offset = common dso_local global i64 0, align 8
@mac_print = common dso_local global i32 0, align 4
@print_data = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@ofname = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"de:hi:mo:pv\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Enable verbose!\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @MAX_DATA_HEADER, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.data_header*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32* null, i32** @buffer, align 8
  store i64 0, i64* @config_size, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @basename(i8* %19)
  store i32 %20, i32* @progname, align 4
  store i64 0, i64* @start_offset, align 8
  store i32 0, i32* @mac_print, align 4
  store i32 0, i32* @print_data, align 4
  store i32 0, i32* @verbose, align 4
  store i32* null, i32** @ofname, align 8
  store i32* null, i32** @ifname, align 8
  br label %21

21:                                               ; preds = %47, %2
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %48

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %44 [
    i32 109, label %31
    i32 105, label %32
    i32 101, label %35
    i32 111, label %38
    i32 112, label %41
    i32 118, label %42
  ]

31:                                               ; preds = %29
  store i32 1, i32* @mac_print, align 4
  br label %47

32:                                               ; preds = %29
  %33 = load i8*, i8** @optarg, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @ifname, align 8
  br label %47

35:                                               ; preds = %29
  %36 = load i8*, i8** @optarg, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @ofname, align 8
  br label %47

38:                                               ; preds = %29
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* @start_offset)
  br label %47

41:                                               ; preds = %29
  store i32 1, i32* @print_data, align 4
  br label %47

42:                                               ; preds = %29
  store i32 1, i32* @verbose, align 4
  %43 = call i32 @VERBOSE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @usage(i32 %45)
  br label %47

47:                                               ; preds = %44, %42, %41, %38, %35, %32, %31
  br label %21

48:                                               ; preds = %28
  %49 = load i32*, i32** @ifname, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @usage(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** @ifname, align 8
  %56 = call i32 @read_file(i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @config_size, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %54
  br label %108

63:                                               ; preds = %59
  %64 = load i32*, i32** @buffer, align 8
  %65 = load i64, i64* @config_size, align 8
  %66 = call i32 @find_header(i32* %64, i64 %65, %struct.data_header** %16)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %105

70:                                               ; preds = %63
  %71 = load i32, i32* @print_data, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @verbose, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73, %70
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.data_header*, %struct.data_header** %16, i64 %83
  %85 = load %struct.data_header*, %struct.data_header** %84, align 8
  %86 = call i32 @print_data_header(%struct.data_header* %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* @mac_print, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @print_mac(%struct.data_header** %16, i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32*, i32** @ofname, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @write_eeprom(%struct.data_header** %16, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %97
  br label %105

105:                                              ; preds = %104, %69
  %106 = load i32*, i32** @buffer, align 8
  %107 = call i32 @free(i32* %106)
  br label %108

108:                                              ; preds = %105, %62
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @basename(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*) #2

declare dso_local i32 @VERBOSE(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @read_file(i32*) #2

declare dso_local i32 @find_header(i32*, i64, %struct.data_header**) #2

declare dso_local i32 @print_data_header(%struct.data_header*) #2

declare dso_local i32 @print_mac(%struct.data_header**, i32) #2

declare dso_local i32 @write_eeprom(%struct.data_header**, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
