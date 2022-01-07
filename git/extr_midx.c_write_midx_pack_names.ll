; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_write_midx_pack_names.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_write_midx_pack_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.pack_info = type { i8*, i64 }

@MIDX_CHUNK_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"incorrect pack-file order: %s before %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, %struct.pack_info*, i64)* @write_midx_pack_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_midx_pack_names(%struct.hashfile* %0, %struct.pack_info* %1, i64 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca %struct.pack_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store %struct.pack_info* %1, %struct.pack_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @MIDX_CHUNK_ALIGNMENT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %78, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %16
  %21 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %21, i64 %22
  %24 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %78

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %32, i64 %33
  %35 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %36, i8* %42)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %52, i64 %53
  %55 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @BUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %56)
  br label %58

58:                                               ; preds = %45, %31, %28
  %59 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %59, i64 %60
  %62 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %68 = load %struct.pack_info*, %struct.pack_info** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %68, i64 %69
  %71 = getelementptr inbounds %struct.pack_info, %struct.pack_info* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @hashwrite(%struct.hashfile* %67, i8* %72, i64 %73)
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %58, %27
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %16

81:                                               ; preds = %16
  %82 = load i32, i32* @MIDX_CHUNK_ALIGNMENT, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* @MIDX_CHUNK_ALIGNMENT, align 4
  %86 = sext i32 %85 to i64
  %87 = urem i64 %84, %86
  %88 = sub i64 %83, %87
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i32, i32* @MIDX_CHUNK_ALIGNMENT, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ult i64 %89, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %81
  %94 = trunc i64 %13 to i32
  %95 = call i32 @memset(i8* %15, i32 0, i32 %94)
  %96 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @hashwrite(%struct.hashfile* %96, i8* %15, i64 %97)
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %93, %81
  %103 = load i64, i64* %10, align 8
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  ret i64 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @BUG(i8*, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
