; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_command_generator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_command_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { %struct.tl_expression*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { %struct.tl_expression* }

@tl_command_generator.len = internal global i32 0, align 4
@tl_command_generator.E = internal global %struct.tl_expression* null, align 8
@compiler = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TL_SECTION_FUNCTIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @tl_command_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tl_command_generator(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.tl_expression*, %struct.tl_expression** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @compiler, i32 0, i32 0), align 8
  %11 = load i64, i64* @TL_SECTION_FUNCTIONS, align 8
  %12 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %10, i64 %11
  %13 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %12, i32 0, i32 0
  %14 = load %struct.tl_expression*, %struct.tl_expression** %13, align 8
  store %struct.tl_expression* %14, %struct.tl_expression** @tl_command_generator.E, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* @tl_command_generator.len, align 4
  br label %17

17:                                               ; preds = %9, %2
  br label %18

18:                                               ; preds = %41, %17
  %19 = load %struct.tl_expression*, %struct.tl_expression** @tl_command_generator.E, align 8
  %20 = load %struct.tl_expression*, %struct.tl_expression** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @compiler, i32 0, i32 0), align 8
  %21 = load i64, i64* @TL_SECTION_FUNCTIONS, align 8
  %22 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %20, i64 %21
  %23 = icmp ne %struct.tl_expression* %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.tl_expression*, %struct.tl_expression** @tl_command_generator.E, align 8
  %26 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load %struct.tl_expression*, %struct.tl_expression** @tl_command_generator.E, align 8
  %31 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %30, i32 0, i32 0
  %32 = load %struct.tl_expression*, %struct.tl_expression** %31, align 8
  store %struct.tl_expression* %32, %struct.tl_expression** @tl_command_generator.E, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @tl_command_generator.len, align 4
  %36 = call i32 @strncmp(i8* %33, i8* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %3, align 8
  br label %43

41:                                               ; preds = %24
  br label %18

42:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
