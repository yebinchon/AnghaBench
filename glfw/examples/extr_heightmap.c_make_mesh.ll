; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_make_mesh.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_heightmap.c_make_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mesh = common dso_local global i32 0, align 4
@mesh_vbo = common dso_local global i32* null, align 8
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@MAP_NUM_LINES = common dso_local global i32 0, align 4
@map_line_indices = common dso_local global i32* null, align 8
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@MAP_NUM_TOTAL_VERTICES = common dso_local global i32 0, align 4
@map_vertices = common dso_local global i32** null, align 8
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@GL_DYNAMIC_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_mesh(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @glGenVertexArrays(i32 1, i32* @mesh)
  %5 = load i32*, i32** @mesh_vbo, align 8
  %6 = call i32 @glGenBuffers(i32 4, i32* %5)
  %7 = load i32, i32* @mesh, align 4
  %8 = call i32 @glBindVertexArray(i32 %7)
  %9 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %10 = load i32*, i32** @mesh_vbo, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @glBindBuffer(i32 %9, i32 %12)
  %14 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %15 = load i32, i32* @MAP_NUM_LINES, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = mul i64 %17, 2
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** @map_line_indices, align 8
  %21 = load i32, i32* @GL_STATIC_DRAW, align 4
  %22 = call i32 @glBufferData(i32 %14, i32 %19, i32* %20, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @glGetAttribLocation(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %26 = load i32*, i32** @mesh_vbo, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @glBindBuffer(i32 %25, i32 %28)
  %30 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %31 = load i32, i32* @MAP_NUM_TOTAL_VERTICES, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32**, i32*** @map_vertices, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* @GL_STATIC_DRAW, align 4
  %40 = call i32 @glBufferData(i32 %30, i32 %34, i32* %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @glEnableVertexAttribArray(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @GL_FLOAT, align 4
  %45 = load i32, i32* @GL_FALSE, align 4
  %46 = call i32 @glVertexAttribPointer(i32 %43, i32 1, i32 %44, i32 %45, i32 0, i32 0)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @glGetAttribLocation(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %50 = load i32*, i32** @mesh_vbo, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @glBindBuffer(i32 %49, i32 %52)
  %54 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %55 = load i32, i32* @MAP_NUM_TOTAL_VERTICES, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32**, i32*** @map_vertices, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* @GL_STATIC_DRAW, align 4
  %64 = call i32 @glBufferData(i32 %54, i32 %58, i32* %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @glEnableVertexAttribArray(i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @GL_FLOAT, align 4
  %69 = load i32, i32* @GL_FALSE, align 4
  %70 = call i32 @glVertexAttribPointer(i32 %67, i32 1, i32 %68, i32 %69, i32 0, i32 0)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @glGetAttribLocation(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %74 = load i32*, i32** @mesh_vbo, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @glBindBuffer(i32 %73, i32 %76)
  %78 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %79 = load i32, i32* @MAP_NUM_TOTAL_VERTICES, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32**, i32*** @map_vertices, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* @GL_DYNAMIC_DRAW, align 4
  %88 = call i32 @glBufferData(i32 %78, i32 %82, i32* %86, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @glEnableVertexAttribArray(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @GL_FLOAT, align 4
  %93 = load i32, i32* @GL_FALSE, align 4
  %94 = call i32 @glVertexAttribPointer(i32 %91, i32 1, i32 %92, i32 %93, i32 0, i32 0)
  ret void
}

declare dso_local i32 @glGenVertexArrays(i32, i32*) #1

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @glBindVertexArray(i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, i32*, i32) #1

declare dso_local i32 @glGetAttribLocation(i32, i8*) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
