; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_mime_settypes.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_mime_settypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*)* @on_config_mime_settypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_mime_settypes(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32* (...) @h2o_mimemap_create()
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i32 @h2o_mimemap_clear_types(i32* %10)
  %12 = load i32*, i32** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.TYPE_9__* @h2o_mimemap_get_default_type(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @h2o_mimemap_set_default_type(i32* %12, i32 %21, i32* null)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @set_mimetypes(i32* %23, i32* %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @h2o_mem_release_shared(i32* %29)
  store i32 -1, i32* %4, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @h2o_mem_release_shared(i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  store i32* %37, i32** %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32* @h2o_mimemap_create(...) #1

declare dso_local i32 @h2o_mimemap_clear_types(i32*) #1

declare dso_local i32 @h2o_mimemap_set_default_type(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @h2o_mimemap_get_default_type(i32*) #1

declare dso_local i64 @set_mimetypes(i32*, i32*, i32*) #1

declare dso_local i32 @h2o_mem_release_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
