; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_arg_generator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_arg_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { i8*, %struct.tl_token* }
%struct.TYPE_2__ = type { %struct.tl_token* }

@tl_arg_generator.len = internal global i32 0, align 4
@tl_arg_generator.T = internal global %struct.tl_token* null, align 8
@expected_expr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @tl_arg_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tl_arg_generator(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  store %struct.tl_token* null, %struct.tl_token** @tl_arg_generator.T, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @expected_expr, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @expected_expr, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  store %struct.tl_token* %15, %struct.tl_token** @tl_arg_generator.T, align 8
  %16 = load %struct.tl_token*, %struct.tl_token** @tl_arg_generator.T, align 8
  %17 = icmp ne %struct.tl_token* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.tl_token*, %struct.tl_token** @tl_arg_generator.T, align 8
  %20 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %19, i32 0, i32 1
  %21 = load %struct.tl_token*, %struct.tl_token** %20, align 8
  store %struct.tl_token* %21, %struct.tl_token** @tl_arg_generator.T, align 8
  br label %22

22:                                               ; preds = %18, %12
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* @tl_arg_generator.len, align 4
  br label %26

26:                                               ; preds = %23, %2
  br label %27

27:                                               ; preds = %45, %26
  %28 = load %struct.tl_token*, %struct.tl_token** @tl_arg_generator.T, align 8
  %29 = icmp ne %struct.tl_token* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.tl_token*, %struct.tl_token** @tl_arg_generator.T, align 8
  %32 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  %34 = load %struct.tl_token*, %struct.tl_token** @tl_arg_generator.T, align 8
  %35 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %34, i32 0, i32 1
  %36 = load %struct.tl_token*, %struct.tl_token** %35, align 8
  store %struct.tl_token* %36, %struct.tl_token** @tl_arg_generator.T, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @tl_arg_generator.len, align 4
  %40 = call i32 @strncmp(i8* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %3, align 8
  br label %47

45:                                               ; preds = %30
  br label %27

46:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
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
