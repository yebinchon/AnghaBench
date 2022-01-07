; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_file.c_h2o_file_register_configurator.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_file.c_h2o_file_register_configurator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_file_configurator_t = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@on_config_enter = common dso_local global i32 0, align 4
@on_config_exit = common dso_local global i32 0, align 4
@h2o_file_default_index_files = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"file.dir\00", align 1
@H2O_CONFIGURATOR_FLAG_PATH = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_DEFERRED = common dso_local global i32 0, align 4
@on_config_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"file.file\00", align 1
@on_config_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"file.index\00", align 1
@H2O_CONFIGURATOR_FLAG_ALL_LEVELS = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXTENSION = common dso_local global i32 0, align 4
@H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE = common dso_local global i32 0, align 4
@on_config_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"file.etag\00", align 1
@on_config_etag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"file.send-compressed\00", align 1
@on_config_send_compressed = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"file.send-gzip\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"file.dirlisting\00", align 1
@on_config_dir_listing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_file_register_configurator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_file_configurator_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @h2o_configurator_create(i32* %4, i32 24)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.st_h2o_file_configurator_t*
  store %struct.st_h2o_file_configurator_t* %7, %struct.st_h2o_file_configurator_t** %3, align 8
  %8 = load i32, i32* @on_config_enter, align 4
  %9 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @on_config_exit, align 4
  %13 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %14 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %17 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %19, i32 0, i32 1
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load i32, i32* @h2o_file_default_index_files, align 4
  %22 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %23 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %27 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %26, i32 0, i32 0
  %28 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %29 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @on_config_dir, align 4
  %34 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %36 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %35, i32 0, i32 0
  %37 = load i32, i32* @H2O_CONFIGURATOR_FLAG_PATH, align 4
  %38 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @H2O_CONFIGURATOR_FLAG_DEFERRED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @on_config_file, align 4
  %43 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %45 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %44, i32 0, i32 0
  %46 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %47 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @on_config_index, align 4
  %53 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %55 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %54, i32 0, i32 0
  %56 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %57 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @on_config_etag, align 4
  %63 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %65 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %64, i32 0, i32 0
  %66 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %67 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @on_config_send_compressed, align 4
  %73 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %75 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %74, i32 0, i32 0
  %76 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %77 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @on_config_send_compressed, align 4
  %83 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.st_h2o_file_configurator_t*, %struct.st_h2o_file_configurator_t** %3, align 8
  %85 = getelementptr inbounds %struct.st_h2o_file_configurator_t, %struct.st_h2o_file_configurator_t* %84, i32 0, i32 0
  %86 = load i32, i32* @H2O_CONFIGURATOR_FLAG_ALL_LEVELS, align 4
  %87 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @on_config_dir_listing, align 4
  %93 = call i32 @h2o_configurator_define_command(%struct.TYPE_4__* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %92)
  ret void
}

declare dso_local i64 @h2o_configurator_create(i32*, i32) #1

declare dso_local i32 @h2o_configurator_define_command(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
