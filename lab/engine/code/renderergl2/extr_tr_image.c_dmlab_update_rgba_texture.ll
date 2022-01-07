; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_dmlab_update_rgba_texture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_dmlab_update_rgba_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@hashTable = common dso_local global %struct.TYPE_4__** null, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmlab_update_rgba_texture(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @generateHashValue(i8* %12)
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @hashTable, align 8
  %15 = load i64, i64* %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  br label %18

18:                                               ; preds = %43, %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i8* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @GL_TEXTURE_2D, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @qglBindTexture(i32 %29, i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GL_RGBA8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = load i32, i32* @qfalse, align 4
  %40 = load i32, i32* @qfalse, align 4
  %41 = call i32 @Upload32(i8* %34, i32 0, i32 0, i32 %35, i32 %36, i32 %37, i32 1, %struct.TYPE_4__* %38, i32 %39, i32 %40)
  store i32 1, i32* %5, align 4
  br label %48

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %10, align 8
  br label %18

47:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @generateHashValue(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @qglBindTexture(i32, i32) #1

declare dso_local i32 @Upload32(i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
