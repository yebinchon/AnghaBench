; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_parse_graph_colors_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_parse_graph_colors_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@COLOR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ignore invalid color '%.*s' in log.graphColors\00", align 1
@GIT_COLOR_RESET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argv_array*, i8*)* @parse_graph_colors_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_graph_colors_config(%struct.argv_array* %0, i8* %1) #0 {
  %3 = alloca %struct.argv_array*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.argv_array* %0, %struct.argv_array** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %49, %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strchrnul(i8* %21, i8 signext 44)
  store i8* %22, i8** %7, align 8
  %23 = load i32, i32* @COLOR_MAXLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @color_parse_mem(i8* %27, i32 %33, i8* %26)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  %37 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %38 = call i32 @argv_array_push(%struct.argv_array* %37, i8* %26)
  br label %49

39:                                               ; preds = %20
  %40 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @warning(i32 %40, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %16

53:                                               ; preds = %16
  %54 = load %struct.argv_array*, %struct.argv_array** %3, align 8
  %55 = load i8*, i8** @GIT_COLOR_RESET, align 8
  %56 = call i32 @argv_array_push(%struct.argv_array* %54, i8* %55)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @color_parse_mem(i8*, i32, i8*) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

declare dso_local i32 @warning(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
