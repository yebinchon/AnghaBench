; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_construct_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_construct_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8* }

@.str = private unnamed_addr constant [27 x i8] c"Creating header for %s...\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"[!] Filename too long - stripping it to 63 bytes.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @construct_header(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = call %struct.TYPE_5__* @malloc(i32 80)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i8* @reverse_endian16(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 9
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i8* @reverse_endian16(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i8* @reverse_endian16(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @reverse_endian32(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i8* @reverse_endian32(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i8* @reverse_endian32(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = icmp sgt i32 %48, 63
  br i1 %49, label %50, label %61

50:                                               ; preds = %8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = bitcast i32** %53 to i8*
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @strncpy(i8* %54, i8* %55, i32 63)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 63
  store i32 0, i32* %60, align 4
  br label %67

61:                                               ; preds = %8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = bitcast i32** %63 to i8*
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @strcpy(i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %61, %50
  %68 = load i32, i32* %16, align 4
  %69 = call i8* @reverse_endian32(i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %73 = call i32 @get_hcs(%struct.TYPE_5__* %72)
  %74 = call i8* @reverse_endian16(i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  ret %struct.TYPE_5__* %77
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i8* @reverse_endian16(i32) #1

declare dso_local i8* @reverse_endian32(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @get_hcs(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
