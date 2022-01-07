; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_file.c_on_config_send_compressed.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_file.c_on_config_send_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.st_h2o_file_configurator_t = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"OFF,ON,gunzip\00", align 1
@H2O_FILE_FLAG_SEND_COMPRESSED = common dso_local global i32 0, align 4
@H2O_FILE_FLAG_GUNZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @on_config_send_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_send_compressed(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.st_h2o_file_configurator_t*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.st_h2o_file_configurator_t*
  store %struct.st_h2o_file_configurator_t* %13, %struct.st_h2o_file_configurator_t** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @h2o_configurator_get_one_of(%struct.TYPE_6__* %14, i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  switch i32 %16, label %44 [
    i32 0, label %17
    i32 1, label %26
    i32 2, label %34
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @H2O_FILE_FLAG_SEND_COMPRESSED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %8, align 8
  %21 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %19
  store i32 %25, i32* %23, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load i32, i32* @H2O_FILE_FLAG_SEND_COMPRESSED, align 4
  %28 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %8, align 8
  %29 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %45

34:                                               ; preds = %3
  %35 = load i32, i32* @H2O_FILE_FLAG_SEND_COMPRESSED, align 4
  %36 = load i32, i32* @H2O_FILE_FLAG_GUNZIP, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %8, align 8
  %39 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %45

44:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %46

45:                                               ; preds = %34, %26, %17
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @h2o_configurator_get_one_of(%struct.TYPE_6__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
