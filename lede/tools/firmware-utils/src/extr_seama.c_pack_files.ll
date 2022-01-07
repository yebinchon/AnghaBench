; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_pack_files.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_pack_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_isize = common dso_local global i64 0, align 8
@o_images = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"file size (%s) : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s.seama\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@o_meta = common dso_local global i32 0, align 4
@o_msize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to open image file '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pack_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_files() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [16 x i32], align 16
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %69, %0
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @o_isize, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = load i8**, i8*** @o_images, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %11
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %22 = call i64 @calculate_digest(i32* %20, i32 0, i32* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i8**, i8*** @o_images, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @verbose(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %26, i64 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @rewind(i32* %29)
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %32 = load i8**, i8*** @o_images, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %38, i32** %1, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %19
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @o_meta, align 4
  %44 = load i32, i32* @o_msize, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @write_seama_header(i32* %42, i32 %43, i32 %44, i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %49 = call i32 @write_checksum(i32* %47, i32* %48)
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* @o_meta, align 4
  %52 = load i32, i32* @o_msize, align 4
  %53 = call i32 @write_meta_data(i32* %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @copy_file(i32* %54, i32* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @fclose(i32* %57)
  br label %59

59:                                               ; preds = %41, %19
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @fclose(i32* %60)
  br label %68

62:                                               ; preds = %11
  %63 = load i8**, i8*** @o_images, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %3, align 8
  br label %7

72:                                               ; preds = %7
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @calculate_digest(i32*, i32, i32*) #1

declare dso_local i32 @verbose(i8*, i8*, i64) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @write_seama_header(i32*, i32, i32, i64) #1

declare dso_local i32 @write_checksum(i32*, i32*) #1

declare dso_local i32 @write_meta_data(i32*, i32, i32) #1

declare dso_local i32 @copy_file(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
