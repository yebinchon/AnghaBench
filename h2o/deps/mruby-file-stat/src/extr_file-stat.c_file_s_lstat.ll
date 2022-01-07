; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_file_s_lstat.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_file_s_lstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@MRB_TT_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"to_path\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"to_str\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Stat\00", align 1
@mrb_stat_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @file_s_lstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_s_lstat(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %9)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MRB_TT_STRING, align 4
  %17 = call i32 @mrb_check_convert_type(i32* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @mrb_nil_p(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MRB_TT_STRING, align 4
  %25 = call i32 @mrb_convert_type(i32* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i8* @mrb_str_to_cstr(i32* %27, i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @LSTAT(i8* %30, %struct.stat* %7)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @mrb_sys_fail(i32* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.RClass* @mrb_class_ptr(i32 %38)
  store %struct.RClass* %39, %struct.RClass** %5, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.RClass*, %struct.RClass** %5, align 8
  %42 = call %struct.RClass* @mrb_class_get_under(i32* %40, %struct.RClass* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.RClass* %42, %struct.RClass** %6, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call %struct.stat* @mrb_stat_alloc(i32* %43)
  store %struct.stat* %44, %struct.stat** %8, align 8
  %45 = load %struct.stat*, %struct.stat** %8, align 8
  %46 = bitcast %struct.stat* %45 to i8*
  %47 = bitcast %struct.stat* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.RClass*, %struct.RClass** %6, align 8
  %50 = load %struct.stat*, %struct.stat** %8, align 8
  %51 = call i32 @Data_Wrap_Struct(i32* %48, %struct.RClass* %49, i32* @mrb_stat_type, %struct.stat* %50)
  %52 = call i32 @mrb_obj_value(i32 %51)
  ret i32 %52
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_check_convert_type(i32*, i32, i32, i8*, i8*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_convert_type(i32*, i32, i32, i8*, i8*) #1

declare dso_local i8* @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @LSTAT(i8*, %struct.stat*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local %struct.RClass* @mrb_class_get_under(i32*, %struct.RClass*, i8*) #1

declare dso_local %struct.stat* @mrb_stat_alloc(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @Data_Wrap_Struct(i32*, %struct.RClass*, i32*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
