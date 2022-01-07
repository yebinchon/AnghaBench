; ModuleID = '/home/carl/AnghaBench/lede/package/utils/nvram/src/extr_nvram.c__nvram_rehash.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/nvram/src/extr_nvram.c__nvram_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@__const._nvram_rehash.buf = private unnamed_addr constant [11 x i8] c"0xXXXXXXXX\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"sdram_init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sdram_config\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sdram_refresh\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sdram_ncdl\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_nvram_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nvram_rehash(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_3__* @nvram_header(i32* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const._nvram_rehash.buf, i32 0, i32 0), i64 11, i1 false)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @_nvram_free(i32* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 1
  %15 = bitcast %struct.TYPE_3__* %14 to i8*
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %34, %1
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 61)
  store i8* %22, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %41

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %6, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @nvram_set(i32* %29, i8* %30, i8* %31)
  %33 = load i8*, i8** %7, align 8
  store i8 61, i8* %33, align 1
  br label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %5, align 8
  br label %16

41:                                               ; preds = %24, %16
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @nvram_get(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 16
  %51 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %54 = call i32 @nvram_set(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %45, %41
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @nvram_get(i32* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 65535
  %65 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %68 = call i32 @nvram_set(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @nvram_get(i32* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 16
  %79 = and i32 %78, 65535
  %80 = call i32 @sprintf(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %83 = call i32 @nvram_set(i32* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %73, %69
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @nvram_get(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %96 = call i32 @nvram_set(i32* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %88, %84
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @nvram_header(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_nvram_free(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @nvram_set(i32*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nvram_get(i32*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
