; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_main.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@start_proc = common dso_local global i32 0, align 4
@glog = common dso_local global %struct.TYPE_4__* null, align 8
@end_proc = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @block_thread_signals()
  %9 = call i32 (...) @setup_signal_handlers()
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @verify_global_config(i32 %10, i8** %11)
  %13 = call i32 @parse_conf_file(i32* %4, i8*** %5)
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @parse_cmd_line(i32 %14, i8** %15)
  %17 = call i32 (...) @initializer()
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %29

21:                                               ; preds = %2
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @set_standard_output()
  br label %28

26:                                               ; preds = %21
  %27 = call i32 @set_curses(i32* %6)
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %67

33:                                               ; preds = %29
  %34 = call i32 (...) @init_processing()
  %35 = call i32 @time(i32* @start_proc)
  %36 = call i32 @parse_log(%struct.TYPE_4__** @glog, i32* null, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @end_spinner()
  br label %67

40:                                               ; preds = %33
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 2), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %67

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @glog, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @glog, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = call i32 (...) @gdns_init()
  %51 = call i32 (...) @parse_initial_sort()
  %52 = call i32 (...) @allocate_holder()
  %53 = call i32 (...) @end_spinner()
  %54 = call i32 @time(i32* @end_proc)
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 1), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %66

58:                                               ; preds = %44
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @standard_output()
  br label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @curses_output()
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %43, %38, %32
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @cleanup(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  ret i32 %77
}

declare dso_local i32 @block_thread_signals(...) #1

declare dso_local i32 @setup_signal_handlers(...) #1

declare dso_local i32 @verify_global_config(i32, i8**) #1

declare dso_local i32 @parse_conf_file(i32*, i8***) #1

declare dso_local i32 @parse_cmd_line(i32, i8**) #1

declare dso_local i32 @initializer(...) #1

declare dso_local i32 @set_standard_output(...) #1

declare dso_local i32 @set_curses(i32*) #1

declare dso_local i32 @init_processing(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @parse_log(%struct.TYPE_4__**, i32*, i32) #1

declare dso_local i32 @end_spinner(...) #1

declare dso_local i32 @gdns_init(...) #1

declare dso_local i32 @parse_initial_sort(...) #1

declare dso_local i32 @allocate_holder(...) #1

declare dso_local i32 @standard_output(...) #1

declare dso_local i32 @curses_output(...) #1

declare dso_local i32 @cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
