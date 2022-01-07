; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_init_file.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_init_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@mrb_file_s_umask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@mrb_file_s_unlink = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@mrb_file_s_rename = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@mrb_file_s_symlink = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@mrb_file_s_chmod = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@mrb_file_s_readlink = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@mrb_file_dirname = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@mrb_file_basename = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"realpath\00", align 1
@mrb_file_realpath = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"_getwd\00", align 1
@mrb_file__getwd = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"_gethome\00", align 1
@mrb_file__gethome = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@mrb_file_flock = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@mrb_file_mtime = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"Constants\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LOCK_SH\00", align 1
@LOCK_SH = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"LOCK_EX\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"LOCK_UN\00", align 1
@LOCK_UN = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"LOCK_NB\00", align 1
@LOCK_NB = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"SEPARATOR\00", align 1
@FILE_SEPARATOR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"PATH_SEPARATOR\00", align 1
@PATH_SEPARATOR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"ALT_SEPARATOR\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@NULL_FILE = common dso_local global i32 0, align 4
@FILE_ALT_SEPARATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_file(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.RClass*, align 8
  %4 = alloca %struct.RClass*, align 8
  %5 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.RClass* @mrb_class_get(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %7, %struct.RClass** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load %struct.RClass*, %struct.RClass** %3, align 8
  %10 = call %struct.RClass* @mrb_define_class(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.RClass* %9)
  store %struct.RClass* %10, %struct.RClass** %4, align 8
  %11 = load %struct.RClass*, %struct.RClass** %4, align 8
  %12 = load i32, i32* @MRB_TT_DATA, align 4
  %13 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %4, align 8
  %16 = load i32, i32* @mrb_file_s_umask, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 1)
  %18 = call i32 @mrb_define_class_method(i32* %14, %struct.RClass* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %4, align 8
  %21 = load i32, i32* @mrb_file_s_unlink, align 4
  %22 = call i32 (...) @MRB_ARGS_ANY()
  %23 = call i32 @mrb_define_class_method(i32* %19, %struct.RClass* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.RClass*, %struct.RClass** %4, align 8
  %26 = load i32, i32* @mrb_file_s_unlink, align 4
  %27 = call i32 (...) @MRB_ARGS_ANY()
  %28 = call i32 @mrb_define_class_method(i32* %24, %struct.RClass* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.RClass*, %struct.RClass** %4, align 8
  %31 = load i32, i32* @mrb_file_s_rename, align 4
  %32 = call i32 @MRB_ARGS_REQ(i32 2)
  %33 = call i32 @mrb_define_class_method(i32* %29, %struct.RClass* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %4, align 8
  %36 = load i32, i32* @mrb_file_s_symlink, align 4
  %37 = call i32 @MRB_ARGS_REQ(i32 2)
  %38 = call i32 @mrb_define_class_method(i32* %34, %struct.RClass* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %4, align 8
  %41 = load i32, i32* @mrb_file_s_chmod, align 4
  %42 = call i32 @MRB_ARGS_REQ(i32 1)
  %43 = call i32 (...) @MRB_ARGS_REST()
  %44 = or i32 %42, %43
  %45 = call i32 @mrb_define_class_method(i32* %39, %struct.RClass* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load %struct.RClass*, %struct.RClass** %4, align 8
  %48 = load i32, i32* @mrb_file_s_readlink, align 4
  %49 = call i32 @MRB_ARGS_REQ(i32 1)
  %50 = call i32 @mrb_define_class_method(i32* %46, %struct.RClass* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = load %struct.RClass*, %struct.RClass** %4, align 8
  %53 = load i32, i32* @mrb_file_dirname, align 4
  %54 = call i32 @MRB_ARGS_REQ(i32 1)
  %55 = call i32 @mrb_define_class_method(i32* %51, %struct.RClass* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load %struct.RClass*, %struct.RClass** %4, align 8
  %58 = load i32, i32* @mrb_file_basename, align 4
  %59 = call i32 @MRB_ARGS_REQ(i32 1)
  %60 = call i32 @mrb_define_class_method(i32* %56, %struct.RClass* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load %struct.RClass*, %struct.RClass** %4, align 8
  %63 = load i32, i32* @mrb_file_realpath, align 4
  %64 = call i32 @MRB_ARGS_REQ(i32 1)
  %65 = call i32 @MRB_ARGS_OPT(i32 1)
  %66 = or i32 %64, %65
  %67 = call i32 @mrb_define_class_method(i32* %61, %struct.RClass* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load %struct.RClass*, %struct.RClass** %4, align 8
  %70 = load i32, i32* @mrb_file__getwd, align 4
  %71 = call i32 (...) @MRB_ARGS_NONE()
  %72 = call i32 @mrb_define_class_method(i32* %68, %struct.RClass* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load %struct.RClass*, %struct.RClass** %4, align 8
  %75 = load i32, i32* @mrb_file__gethome, align 4
  %76 = call i32 @MRB_ARGS_OPT(i32 1)
  %77 = call i32 @mrb_define_class_method(i32* %73, %struct.RClass* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load %struct.RClass*, %struct.RClass** %4, align 8
  %80 = load i32, i32* @mrb_file_flock, align 4
  %81 = call i32 @MRB_ARGS_REQ(i32 1)
  %82 = call i32 @mrb_define_method(i32* %78, %struct.RClass* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = load %struct.RClass*, %struct.RClass** %4, align 8
  %85 = load i32, i32* @mrb_file_mtime, align 4
  %86 = call i32 (...) @MRB_ARGS_NONE()
  %87 = call i32 @mrb_define_method(i32* %83, %struct.RClass* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = load %struct.RClass*, %struct.RClass** %4, align 8
  %90 = call %struct.RClass* @mrb_define_module_under(i32* %88, %struct.RClass* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  store %struct.RClass* %90, %struct.RClass** %5, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load %struct.RClass*, %struct.RClass** %5, align 8
  %93 = load i32, i32* @LOCK_SH, align 4
  %94 = call i32 @mrb_fixnum_value(i32 %93)
  %95 = call i32 @mrb_define_const(i32* %91, %struct.RClass* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load %struct.RClass*, %struct.RClass** %5, align 8
  %98 = load i32, i32* @LOCK_EX, align 4
  %99 = call i32 @mrb_fixnum_value(i32 %98)
  %100 = call i32 @mrb_define_const(i32* %96, %struct.RClass* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load %struct.RClass*, %struct.RClass** %5, align 8
  %103 = load i32, i32* @LOCK_UN, align 4
  %104 = call i32 @mrb_fixnum_value(i32 %103)
  %105 = call i32 @mrb_define_const(i32* %101, %struct.RClass* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %2, align 8
  %107 = load %struct.RClass*, %struct.RClass** %5, align 8
  %108 = load i32, i32* @LOCK_NB, align 4
  %109 = call i32 @mrb_fixnum_value(i32 %108)
  %110 = call i32 @mrb_define_const(i32* %106, %struct.RClass* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = load %struct.RClass*, %struct.RClass** %5, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = load i32, i32* @FILE_SEPARATOR, align 4
  %115 = call i32 @mrb_str_new_cstr(i32* %113, i32 %114)
  %116 = call i32 @mrb_define_const(i32* %111, %struct.RClass* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %2, align 8
  %118 = load %struct.RClass*, %struct.RClass** %5, align 8
  %119 = load i32*, i32** %2, align 8
  %120 = load i32, i32* @PATH_SEPARATOR, align 4
  %121 = call i32 @mrb_str_new_cstr(i32* %119, i32 %120)
  %122 = call i32 @mrb_define_const(i32* %117, %struct.RClass* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = load %struct.RClass*, %struct.RClass** %5, align 8
  %125 = call i32 (...) @mrb_nil_value()
  %126 = call i32 @mrb_define_const(i32* %123, %struct.RClass* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %2, align 8
  %128 = load %struct.RClass*, %struct.RClass** %5, align 8
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @NULL_FILE, align 4
  %131 = call i32 @mrb_str_new_cstr(i32* %129, i32 %130)
  %132 = call i32 @mrb_define_const(i32* %127, %struct.RClass* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %131)
  ret void
}

declare dso_local %struct.RClass* @mrb_class_get(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_define_class(i32*, i8*, %struct.RClass*) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_define_class_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_ANY(...) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @mrb_define_method(i32*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local %struct.RClass* @mrb_define_module_under(i32*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_define_const(i32*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
