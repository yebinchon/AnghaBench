; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_menu.c_menu_add_option.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_menu.c_menu_add_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@modules_sym = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"symbol '%s' redefines option 'modules' already defined by symbol '%s'\00", align 1
@current_entry = common dso_local global %struct.TYPE_5__* null, align 8
@sym_defconfig_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"trying to redefine defconfig symbol\00", align 1
@SYMBOL_ALLNOCONFIG_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_add_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %51 [
    i32 128, label %6
    i32 130, label %23
    i32 129, label %40
    i32 131, label %43
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @modules_sym, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_entry, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @modules_sym, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @zconf_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %9, %6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_entry, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** @modules_sym, align 8
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sym_defconfig_list, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_entry, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** @sym_defconfig_list, align 8
  br label %39

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sym_defconfig_list, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_entry, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @zconf_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %26
  br label %51

40:                                               ; preds = %2
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @prop_add_env(i8* %41)
  br label %51

43:                                               ; preds = %2
  %44 = load i32, i32* @SYMBOL_ALLNOCONFIG_Y, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_entry, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %2, %43, %40, %39, %19
  ret void
}

declare dso_local i32 @zconf_error(i8*, ...) #1

declare dso_local i32 @prop_add_env(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
