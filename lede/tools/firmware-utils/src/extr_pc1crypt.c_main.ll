; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc1_ctx = type { i32 }
%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"di:o:h\00", align 1
@decrypt = common dso_local global i32 0, align 4
@optarg = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@BUFSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.pc1_ctx, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @basename(i8* %19)
  store i32 %20, i32* @progname, align 4
  br label %21

21:                                               ; preds = %2, %41
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %42

28:                                               ; preds = %21
  %29 = load i32, i32* %14, align 4
  switch i32 %29, label %38 [
    i32 100, label %30
    i32 105, label %31
    i32 111, label %33
    i32 104, label %35
  ]

30:                                               ; preds = %28
  store i32 1, i32* @decrypt, align 4
  br label %41

31:                                               ; preds = %28
  %32 = load i32*, i32** @optarg, align 8
  store i32* %32, i32** @ifname, align 8
  br label %41

33:                                               ; preds = %28
  %34 = load i32*, i32** @optarg, align 8
  store i32* %34, i32** @ofname, align 8
  br label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @EXIT_SUCCESS, align 4
  %37 = call i32 @usage(i32 %36)
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %38, %35, %33, %31, %30
  br label %21

42:                                               ; preds = %27
  %43 = load i32*, i32** @ifname, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %155

47:                                               ; preds = %42
  %48 = load i32*, i32** @ofname, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %155

52:                                               ; preds = %47
  %53 = load i32*, i32** @ifname, align 8
  %54 = call i32 @stat(i32* %53, %struct.stat* %9)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** @ifname, align 8
  %59 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %58)
  br label %155

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* @BUFSIZE, align 4
  %64 = call i8* @malloc(i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %155

69:                                               ; preds = %60
  %70 = load i32*, i32** @ifname, align 8
  %71 = call i32* @fopen(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** @ifname, align 8
  %76 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* %75)
  br label %152

77:                                               ; preds = %69
  %78 = load i32*, i32** @ofname, align 8
  %79 = call i32* @fopen(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** @ofname, align 8
  %84 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32* %83)
  br label %149

85:                                               ; preds = %77
  %86 = call i32 @pc1_init(%struct.pc1_ctx* %6)
  br label %87

87:                                               ; preds = %129, %85
  %88 = load i32, i32* %11, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %133

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @BUFSIZE, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @BUFSIZE, align 4
  store i32 %95, i32* %15, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %96, %94
  store i64 0, i64* @errno, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @fread(i8* %99, i32 %100, i32 1, i32* %101)
  %103 = load i64, i64* @errno, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32*, i32** @ifname, align 8
  %107 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32* %106)
  br label %139

108:                                              ; preds = %98
  %109 = load i32, i32* @decrypt, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @pc1_decrypt_buf(%struct.pc1_ctx* %6, i8* %112, i32 %113)
  br label %119

115:                                              ; preds = %108
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @pc1_encrypt_buf(%struct.pc1_ctx* %6, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
  store i64 0, i64* @errno, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @fwrite(i8* %120, i32 %121, i32 1, i32* %122)
  %124 = load i64, i64* @errno, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32*, i32** @ofname, align 8
  %128 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32* %127)
  br label %139

129:                                              ; preds = %119
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %87

133:                                              ; preds = %87
  %134 = call i32 @pc1_finish(%struct.pc1_ctx* %6)
  %135 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %133
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @fflush(i32* %137)
  br label %139

139:                                              ; preds = %136, %126, %105
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @fclose(i32* %140)
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @EXIT_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32*, i32** @ofname, align 8
  %147 = call i32 @unlink(i32* %146)
  br label %148

148:                                              ; preds = %145, %139
  br label %149

149:                                              ; preds = %148, %82
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @fclose(i32* %150)
  br label %152

152:                                              ; preds = %149, %74
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %152, %67, %57, %50, %45
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @pc1_init(%struct.pc1_ctx*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @pc1_decrypt_buf(%struct.pc1_ctx*, i8*, i32) #1

declare dso_local i32 @pc1_encrypt_buf(%struct.pc1_ctx*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @pc1_finish(%struct.pc1_ctx*) #1

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
