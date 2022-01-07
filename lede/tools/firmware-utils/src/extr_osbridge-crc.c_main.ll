; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_osbridge-crc.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_osbridge-crc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"i:o:h\00", align 1
@optarg = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @basename(i8* %19)
  store i32 %20, i32* @progname, align 4
  br label %21

21:                                               ; preds = %2, %40
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %41

28:                                               ; preds = %21
  %29 = load i32, i32* %15, align 4
  switch i32 %29, label %37 [
    i32 105, label %30
    i32 111, label %32
    i32 104, label %34
  ]

30:                                               ; preds = %28
  %31 = load i32*, i32** @optarg, align 8
  store i32* %31, i32** @ifname, align 8
  br label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** @optarg, align 8
  store i32* %33, i32** @ofname, align 8
  br label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @EXIT_SUCCESS, align 4
  %36 = call i32 @usage(i32 %35)
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @usage(i32 %38)
  br label %40

40:                                               ; preds = %37, %34, %32, %30
  br label %21

41:                                               ; preds = %27
  %42 = load i32*, i32** @ifname, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %133

46:                                               ; preds = %41
  %47 = load i32*, i32** @ofname, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %133

51:                                               ; preds = %46
  %52 = load i32*, i32** @ifname, align 8
  %53 = call i32 @stat(i32* %52, %struct.stat* %9)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** @ifname, align 8
  %58 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %57)
  br label %133

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @malloc(i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %133

68:                                               ; preds = %59
  %69 = load i32*, i32** @ifname, align 8
  %70 = call i32* @fopen(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** @ifname, align 8
  %75 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* %74)
  br label %130

76:                                               ; preds = %68
  store i64 0, i64* @errno, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @fread(i8* %77, i32 %78, i32 1, i32* %79)
  %81 = load i64, i64* @errno, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** @ifname, align 8
  %85 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32* %84)
  br label %127

86:                                               ; preds = %76
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @crc32buf(i8* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @HOST_TO_LE32(i32 %92)
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** @ofname, align 8
  %96 = call i32* @fopen(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %96, i32** %13, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32*, i32** @ofname, align 8
  %101 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32* %100)
  br label %127

102:                                              ; preds = %86
  store i64 0, i64* @errno, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @fwrite(i8* %103, i32 %104, i32 1, i32* %105)
  %107 = load i64, i64* @errno, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32*, i32** @ofname, align 8
  %111 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32* %110)
  br label %117

112:                                              ; preds = %102
  %113 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @fflush(i32* %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @fclose(i32* %118)
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @EXIT_SUCCESS, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32*, i32** @ofname, align 8
  %125 = call i32 @unlink(i32* %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %127

127:                                              ; preds = %126, %99, %83
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @fclose(i32* %128)
  br label %130

130:                                              ; preds = %127, %73
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @free(i8* %131)
  br label %133

133:                                              ; preds = %130, %66, %56, %49, %44
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @crc32buf(i8*, i32) #1

declare dso_local i32 @HOST_TO_LE32(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
