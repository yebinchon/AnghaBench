; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlermimemap.c_h2o_mimemap_define_mimetype.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlermimemap.c_h2o_mimemap_define_mimetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mimemap_define_mimetype(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i32 @h2o_iovec_init(i8* %11, i32 %13)
  %15 = call %struct.TYPE_9__* @h2o_mimemap_get_type_by_mimetype(i32* %10, i32 %14, i32 1)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @memcmp(i32* %23, i32* %24, i32 4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = call i32 @h2o_mem_addref_shared(%struct.TYPE_9__* %28)
  br label %34

30:                                               ; preds = %20, %4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call %struct.TYPE_9__* @create_extension_type(i8* %31, i32* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call i32 @set_type(i32* %35, i8* %36, %struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = call i32 @h2o_mem_release_shared(%struct.TYPE_9__* %39)
  ret void
}

declare dso_local %struct.TYPE_9__* @h2o_mimemap_get_type_by_mimetype(i32*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @h2o_mem_addref_shared(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @create_extension_type(i8*, i32*) #1

declare dso_local i32 @set_type(i32*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @h2o_mem_release_shared(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
