; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_io_stat.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_io_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"`fileno' is not implemented\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Stat\00", align 1
@mrb_stat_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @io_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_stat(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RClass*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_intern_lit(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @mrb_respond_to(i32* %10, i32 %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mrb_funcall(i32* %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %19, i32* %9, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @E_NOTIMP_ERROR, align 4
  %23 = call i32 @mrb_raise(i32* %21, i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mrb_fixnum(i32 %25)
  %27 = call i32 @fstat(i32 %26, %struct.stat* %7)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @mrb_sys_fail(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32*, i32** %3, align 8
  %34 = call %struct.RClass* @mrb_class_get(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.RClass* %34, %struct.RClass** %5, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.RClass*, %struct.RClass** %5, align 8
  %37 = call %struct.RClass* @mrb_class_get_under(i32* %35, %struct.RClass* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.RClass* %37, %struct.RClass** %6, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.stat* @mrb_stat_alloc(i32* %38)
  store %struct.stat* %39, %struct.stat** %8, align 8
  %40 = load %struct.stat*, %struct.stat** %8, align 8
  %41 = bitcast %struct.stat* %40 to i8*
  %42 = bitcast %struct.stat* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.RClass*, %struct.RClass** %6, align 8
  %45 = load %struct.stat*, %struct.stat** %8, align 8
  %46 = call i32 @Data_Wrap_Struct(i32* %43, %struct.RClass* %44, i32* @mrb_stat_type, %struct.stat* %45)
  %47 = call i32 @mrb_obj_value(i32 %46)
  ret i32 %47
}

declare dso_local i64 @mrb_respond_to(i32*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_class_get(i32*, i8*) #1

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
