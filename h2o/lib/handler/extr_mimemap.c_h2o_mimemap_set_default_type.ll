; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mimemap.c_h2o_mimemap_set_default_type.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mimemap.c_h2o_mimemap_set_default_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mimemap_set_default_type(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call i32 @h2o_iovec_init(i8* %9, i32 %11)
  %13 = call %struct.TYPE_9__* @h2o_mimemap_get_type_by_mimetype(i32* %8, i32 %12, i32 1)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @memcmp(i32* %21, i32* %22, i32 4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %15
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = call i32 @h2o_mem_addref_shared(%struct.TYPE_9__* %26)
  br label %32

28:                                               ; preds = %18, %3
  %29 = load i8*, i8** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_9__* @create_extension_type(i8* %29, i32* %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32 @set_default_type(i32* %33, %struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = call i32 @h2o_mem_release_shared(%struct.TYPE_9__* %36)
  ret void
}

declare dso_local %struct.TYPE_9__* @h2o_mimemap_get_type_by_mimetype(i32*, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @h2o_mem_addref_shared(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @create_extension_type(i8*, i32*) #1

declare dso_local i32 @set_default_type(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @h2o_mem_release_shared(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
