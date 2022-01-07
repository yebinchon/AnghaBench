; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_p.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @mrb_funcall(%struct.TYPE_5__* %9, i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mrb_obj_value(i32 %26)
  %28 = call i32 @mrb_funcall(%struct.TYPE_5__* %23, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %19
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mrb_string_p(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mrb_obj_as_string(%struct.TYPE_5__* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RSTRING_PTR(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @RSTRING_LEN(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i8* @mrb_locale_from_utf8(i32 %40, i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fwrite(i8* %45, i32 %47, i32 1, i32 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @mrb_locale_free(i8* %50)
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @putc(i8 signext 10, i32 %52)
  ret void
}

declare dso_local i32 @mrb_funcall(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_obj_as_string(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @mrb_locale_from_utf8(i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
