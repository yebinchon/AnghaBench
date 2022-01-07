; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_name_and_item_from_var.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_name_and_item_from_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ignoring suspicious submodule name: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.strbuf*, %struct.strbuf*)* @name_and_item_from_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_and_item_from_var(i8* %0, %struct.strbuf* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @parse_config_key(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %8, i32* %10, i8** %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %42

20:                                               ; preds = %16
  %21 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @strbuf_add(%struct.strbuf* %21, i8* %22, i32 %23)
  %25 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @check_submodule_name(i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @warning(i32 %31, i32 %34)
  %36 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %37 = call i32 @strbuf_release(%struct.strbuf* %36)
  store i32 0, i32* %4, align 4
  br label %42

38:                                               ; preds = %20
  %39 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strbuf_addstr(%struct.strbuf* %39, i8* %40)
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %30, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i64 @check_submodule_name(i32) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
