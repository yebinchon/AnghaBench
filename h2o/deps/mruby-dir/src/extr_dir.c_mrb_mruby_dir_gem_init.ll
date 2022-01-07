; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_mruby_dir_gem_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_mruby_dir_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"Dir\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@mrb_dir_delete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"exist?\00", align 1
@mrb_dir_existp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"getwd\00", align 1
@mrb_dir_getwd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@mrb_dir_mkdir = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"_chdir\00", align 1
@mrb_dir_chdir = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@mrb_dir_chroot = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@mrb_dir_close = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_dir_init = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@mrb_dir_read = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@mrb_dir_rewind = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@mrb_dir_seek = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@mrb_dir_tell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_dir_gem_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.RClass* @mrb_define_class(%struct.TYPE_6__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.RClass*, %struct.RClass** %3, align 8
  %10 = load i32, i32* @MRB_TT_DATA, align 4
  %11 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load i32, i32* @mrb_dir_delete, align 4
  %15 = call i32 @MRB_ARGS_REQ(i32 1)
  %16 = call i32 @mrb_define_class_method(%struct.TYPE_6__* %12, %struct.RClass* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @mrb_dir_existp, align 4
  %20 = call i32 @MRB_ARGS_REQ(i32 1)
  %21 = call i32 @mrb_define_class_method(%struct.TYPE_6__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @mrb_dir_getwd, align 4
  %25 = call i32 (...) @MRB_ARGS_NONE()
  %26 = call i32 @mrb_define_class_method(%struct.TYPE_6__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = load %struct.RClass*, %struct.RClass** %3, align 8
  %29 = load i32, i32* @mrb_dir_mkdir, align 4
  %30 = call i32 @MRB_ARGS_REQ(i32 1)
  %31 = call i32 @MRB_ARGS_OPT(i32 1)
  %32 = or i32 %30, %31
  %33 = call i32 @mrb_define_class_method(%struct.TYPE_6__* %27, %struct.RClass* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %3, align 8
  %36 = load i32, i32* @mrb_dir_chdir, align 4
  %37 = call i32 @MRB_ARGS_REQ(i32 1)
  %38 = call i32 @mrb_define_class_method(%struct.TYPE_6__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %3, align 8
  %41 = load i32, i32* @mrb_dir_chroot, align 4
  %42 = call i32 @MRB_ARGS_REQ(i32 1)
  %43 = call i32 @mrb_define_class_method(%struct.TYPE_6__* %39, %struct.RClass* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = load %struct.RClass*, %struct.RClass** %3, align 8
  %46 = load i32, i32* @mrb_dir_close, align 4
  %47 = call i32 (...) @MRB_ARGS_NONE()
  %48 = call i32 @mrb_define_method(%struct.TYPE_6__* %44, %struct.RClass* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = load i32, i32* @mrb_dir_init, align 4
  %52 = call i32 @MRB_ARGS_REQ(i32 1)
  %53 = call i32 @mrb_define_method(%struct.TYPE_6__* %49, %struct.RClass* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = load %struct.RClass*, %struct.RClass** %3, align 8
  %56 = load i32, i32* @mrb_dir_read, align 4
  %57 = call i32 (...) @MRB_ARGS_NONE()
  %58 = call i32 @mrb_define_method(%struct.TYPE_6__* %54, %struct.RClass* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = load %struct.RClass*, %struct.RClass** %3, align 8
  %61 = load i32, i32* @mrb_dir_rewind, align 4
  %62 = call i32 (...) @MRB_ARGS_NONE()
  %63 = call i32 @mrb_define_method(%struct.TYPE_6__* %59, %struct.RClass* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = load %struct.RClass*, %struct.RClass** %3, align 8
  %66 = load i32, i32* @mrb_dir_seek, align 4
  %67 = call i32 @MRB_ARGS_REQ(i32 1)
  %68 = call i32 @mrb_define_method(%struct.TYPE_6__* %64, %struct.RClass* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = load %struct.RClass*, %struct.RClass** %3, align 8
  %71 = load i32, i32* @mrb_dir_tell, align 4
  %72 = call i32 (...) @MRB_ARGS_NONE()
  %73 = call i32 @mrb_define_method(%struct.TYPE_6__* %69, %struct.RClass* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %71, i32 %72)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_6__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_6__*, %struct.RClass*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
