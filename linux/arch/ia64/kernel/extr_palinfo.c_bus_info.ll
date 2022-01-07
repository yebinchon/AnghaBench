; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_bus_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_bus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_5__ = type { i32 }

@bus_features = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%-48s : %s%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"NotImpl\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"NoCtrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @bus_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_info(%struct.seq_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  %13 = load i8**, i8*** @bus_features, align 8
  store i8** %13, i8*** %4, align 8
  %14 = call i32 @ia64_pal_bus_get_features(%struct.TYPE_5__* %5, %struct.TYPE_5__* %6, %struct.TYPE_5__* %7)
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %66, %17
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %77

27:                                               ; preds = %24
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %66

32:                                               ; preds = %27
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %51

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i8* [ %49, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ]
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i8* [ %61, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %62 ]
  %65 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %40, i8* %52, i8* %64)
  br label %66

66:                                               ; preds = %63, %31
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %24

77:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ia64_pal_bus_get_features(%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
