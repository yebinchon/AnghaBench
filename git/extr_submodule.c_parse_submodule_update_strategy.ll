; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_parse_submodule_update_strategy.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_parse_submodule_update_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_update_strategy = type { i32, i32* }

@SM_UPDATE_UNSPECIFIED = common dso_local global i32 0, align 4
@SM_UPDATE_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_submodule_update_strategy(i8* %0, %struct.submodule_update_strategy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.submodule_update_strategy*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.submodule_update_strategy* %1, %struct.submodule_update_strategy** %5, align 8
  %7 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %5, align 8
  %8 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = call i32 @free(i8* %10)
  %12 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %5, align 8
  %13 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @parse_submodule_update_type(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SM_UPDATE_UNSPECIFIED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %5, align 8
  %23 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SM_UPDATE_COMMAND, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32* @xstrdup(i8* %29)
  %31 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %5, align 8
  %32 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  br label %33

33:                                               ; preds = %27, %20
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_submodule_update_type(i8*) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
