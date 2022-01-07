; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mruby/tools/mruby/extr_mruby.c_usage.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mruby/tools/mruby/extr_mruby.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage.usage_msg = internal constant [11 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"switches:\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"-b           load and execute RiteBinary (mrb) file\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"-c           check syntax only\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"-d           set debugging flags (set $DEBUG to true)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"-e 'command' one line of script\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"-r library   load the library before executing your script\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"-v           print version number, then run in verbose mode\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"--verbose    run in verbose mode\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"--version    print the version\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"--copyright  print the copyright\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Usage: %s [switches] programfile\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @usage.usage_msg, i64 0, i64 0), i8*** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %4)
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %3, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  br label %6

15:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
