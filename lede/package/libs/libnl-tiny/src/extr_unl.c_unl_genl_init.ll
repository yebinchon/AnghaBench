; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unl = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unl_genl_init(%struct.unl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unl*, align 8
  %5 = alloca i8*, align 8
  store %struct.unl* %0, %struct.unl** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.unl*, %struct.unl** %4, align 8
  %7 = call i32 @memset(%struct.unl* %6, i32 0, i32 20)
  %8 = load %struct.unl*, %struct.unl** %4, align 8
  %9 = call i64 @unl_init(%struct.unl* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  %13 = call i32 @NLMSG_ALIGN(i32 4)
  %14 = load %struct.unl*, %struct.unl** %4, align 8
  %15 = getelementptr inbounds %struct.unl, %struct.unl* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strdup(i8* %16)
  %18 = load %struct.unl*, %struct.unl** %4, align 8
  %19 = getelementptr inbounds %struct.unl, %struct.unl* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.unl*, %struct.unl** %4, align 8
  %21 = getelementptr inbounds %struct.unl, %struct.unl* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %55

25:                                               ; preds = %12
  %26 = load %struct.unl*, %struct.unl** %4, align 8
  %27 = getelementptr inbounds %struct.unl, %struct.unl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @genl_connect(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %55

32:                                               ; preds = %25
  %33 = load %struct.unl*, %struct.unl** %4, align 8
  %34 = getelementptr inbounds %struct.unl, %struct.unl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.unl*, %struct.unl** %4, align 8
  %37 = getelementptr inbounds %struct.unl, %struct.unl* %36, i32 0, i32 1
  %38 = call i64 @genl_ctrl_alloc_cache(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.unl*, %struct.unl** %4, align 8
  %43 = getelementptr inbounds %struct.unl, %struct.unl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @genl_ctrl_search_by_name(i32 %44, i8* %45)
  %47 = load %struct.unl*, %struct.unl** %4, align 8
  %48 = getelementptr inbounds %struct.unl, %struct.unl* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.unl*, %struct.unl** %4, align 8
  %50 = getelementptr inbounds %struct.unl, %struct.unl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %59

55:                                               ; preds = %53, %40, %31, %24
  %56 = load %struct.unl*, %struct.unl** %4, align 8
  %57 = call i32 @unl_free(%struct.unl* %56)
  br label %58

58:                                               ; preds = %55, %11
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.unl*, i32, i32) #1

declare dso_local i64 @unl_init(%struct.unl*) #1

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @genl_connect(i32) #1

declare dso_local i64 @genl_ctrl_alloc_cache(i32, i32*) #1

declare dso_local i32 @genl_ctrl_search_by_name(i32, i8*) #1

declare dso_local i32 @unl_free(%struct.unl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
