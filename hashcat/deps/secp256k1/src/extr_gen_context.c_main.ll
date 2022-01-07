; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_gen_context.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_gen_context.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*** }

@.str = private unnamed_addr constant [28 x i8] c"src/ecmult_static_context.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Could not open src/ecmult_static_context.h for writing!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"#ifndef _SECP256K1_ECMULT_STATIC_CONTEXT_\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"#define _SECP256K1_ECMULT_STATIC_CONTEXT_\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"#include \22src/group.h\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"#define SC SECP256K1_GE_STORAGE_CONST\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"#if ECMULT_GEN_PREC_N != %d || ECMULT_GEN_PREC_G != %d\0A\00", align 1
@ECMULT_GEN_PREC_N = common dso_local global i32 0, align 4
@ECMULT_GEN_PREC_G = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [136 x i8] c"   #error configuration mismatch, invalid ECMULT_GEN_PREC_N, ECMULT_GEN_PREC_G. Try deleting ecmult_static_context.h before the build.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.10 = private unnamed_addr constant [109 x i8] c"static const secp256k1_ge_storage secp256k1_ecmult_static_context[ECMULT_GEN_PREC_N][ECMULT_GEN_PREC_G] = {\0A\00", align 1
@default_error_callback = common dso_local global i32 0, align 4
@SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"    SC(%uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu, %uu)\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"#undef SC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32* @fopen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** @stderr, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %111

20:                                               ; preds = %2
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %31 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.8, i64 0, i64 0))
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.10, i64 0, i64 0))
  %39 = load i32, i32* @SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE, align 4
  %40 = call i8* @checked_malloc(i32* @default_error_callback, i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %7, align 8
  %42 = call i32 @secp256k1_ecmult_gen_context_init(%struct.TYPE_5__* %6)
  %43 = call i32 @secp256k1_ecmult_gen_context_build(%struct.TYPE_5__* %6, i8** %7)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %96, %20
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %44
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %81, %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %58 = load i32***, i32**** %57, align 8
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SECP256K1_GE_STORAGE_CONST_GET(i32 %67)
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %80

77:                                               ; preds = %55
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %51

84:                                               ; preds = %51
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %95

92:                                               ; preds = %84
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %44

99:                                               ; preds = %44
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %102 = call i32 @secp256k1_ecmult_gen_context_clear(%struct.TYPE_5__* %6)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @fclose(i32* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %99, %17
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @checked_malloc(i32*, i32) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_init(%struct.TYPE_5__*) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_build(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @SECP256K1_GE_STORAGE_CONST_GET(i32) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_clear(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
