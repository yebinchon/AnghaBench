; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/vdso/extr_genvdso.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/vdso/extr_genvdso.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_name = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Usage: %s <debug VDSO> <stripped VDSO> <output file> [<name>]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vdso_name = common dso_local global i8* null, align 8
@MS_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Failed to sync '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@out_file = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Failed to open '%s': %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"/* Automatically generated - do not edit */\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"#include <linux/linkage.h>\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"#include <linux/mm.h>\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"#include <asm/vdso.h>\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"static unsigned char vdso_data[PAGE_ALIGN(%zu)] __page_aligned_data = {\0A\09\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"static struct page *vdso_pages[PAGE_ALIGN(%zu) / PAGE_SIZE];\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"struct mips_vdso_image vdso_image%s%s = {\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"\09.data = vdso_data,\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"\09.size = PAGE_ALIGN(%zu),\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"\09.mapping = {\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"\09\09.name = \22[vdso]\22,\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\09\09.pages = vdso_pages,\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\09},\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @program_name, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 5
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** @program_name, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %26, i32* %3, align 4
  br label %190

27:                                               ; preds = %19
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 3
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 4
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %43 ]
  store i8* %45, i8** @vdso_name, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @map_vdso(i8* %46, i64* %11)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %51, i32* %3, align 4
  br label %190

52:                                               ; preds = %44
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @map_vdso(i8* %53, i64* %12)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %58, i32* %3, align 4
  br label %190

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @patch_vdso(i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %65, i32* %3, align 4
  br label %190

66:                                               ; preds = %59
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @patch_vdso(i8* %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %190

73:                                               ; preds = %66
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32, i32* @MS_SYNC, align 4
  %77 = call i64 @msync(i8* %74, i64 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** @program_name, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @errno, align 4
  %84 = call i8* @strerror(i32 %83)
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %81, i8* %82, i8* %84)
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %86, i32* %3, align 4
  br label %190

87:                                               ; preds = %73
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* @MS_SYNC, align 4
  %91 = call i64 @msync(i8* %88, i64 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** @program_name, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* @errno, align 4
  %98 = call i8* @strerror(i32 %97)
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %95, i8* %96, i8* %98)
  %100 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %100, i32* %3, align 4
  br label %190

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @fopen(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %104, i32* @out_file, align 4
  %105 = load i32, i32* @out_file, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i8*, i8** @program_name, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @errno, align 4
  %112 = call i8* @strerror(i32 %111)
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %109, i8* %110, i8* %112)
  %114 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %114, i32* %3, align 4
  br label %190

115:                                              ; preds = %102
  %116 = load i32, i32* @out_file, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @out_file, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* @out_file, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @out_file, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %124 = load i32, i32* @out_file, align 4
  %125 = load i64, i64* %12, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i64 %125)
  store i64 0, i64* %13, align 8
  br label %127

127:                                              ; preds = %146, %115
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i64, i64* %13, align 8
  %133 = urem i64 %132, 10
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @out_file, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %131
  %139 = load i32, i32* @out_file, align 4
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %138
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %13, align 8
  br label %127

149:                                              ; preds = %127
  %150 = load i32, i32* @out_file, align 4
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %152 = load i32, i32* @out_file, align 4
  %153 = load i64, i64* %12, align 8
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @out_file, align 4
  %156 = load i8*, i8** @vdso_name, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %163 = load i8*, i8** @vdso_name, align 8
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %162, i8* %163)
  %165 = load i32, i32* @out_file, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %167 = load i32, i32* @out_file, align 4
  %168 = load i64, i64* %12, align 8
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* @out_file, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %172 = load i32, i32* @out_file, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %174 = load i32, i32* @out_file, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %176 = load i32, i32* @out_file, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %178 = load i8*, i8** %6, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @get_symbols(i8* %178, i8* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %149
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @unlink(i8* %183)
  %185 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %185, i32* %3, align 4
  br label %190

186:                                              ; preds = %149
  %187 = load i32, i32* @out_file, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %189 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %186, %182, %107, %93, %79, %71, %64, %57, %50, %22
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @map_vdso(i8*, i64*) #1

declare dso_local i32 @patch_vdso(i8*, i8*) #1

declare dso_local i64 @msync(i8*, i64, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @get_symbols(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
