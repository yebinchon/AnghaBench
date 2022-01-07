; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i8*, i32, i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"line_get_config failed to parse device number\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"device number out of range\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_get_config(i8* %0, %struct.line* %1, i32 %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.line*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.line*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tty_struct*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.line* %1, %struct.line** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i8** %15, i32 0)
  store i32 %20, i32* %16, align 4
  %21 = load i8*, i8** %15, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i8*, i8** %15, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %6
  %30 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  store i32 0, i32* %7, align 4
  br label %79

31:                                               ; preds = %25
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %31
  %39 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  store i32 0, i32* %7, align 4
  br label %79

40:                                               ; preds = %34
  %41 = load %struct.line*, %struct.line** %9, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.line, %struct.line* %41, i64 %43
  store %struct.line* %44, %struct.line** %14, align 8
  %45 = load %struct.line*, %struct.line** %14, align 8
  %46 = getelementptr inbounds %struct.line, %struct.line* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @CONFIG_CHUNK(i8* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %77

54:                                               ; preds = %40
  %55 = load %struct.line*, %struct.line** %14, align 8
  %56 = getelementptr inbounds %struct.line, %struct.line* %55, i32 0, i32 1
  %57 = call %struct.tty_struct* @tty_port_tty_get(i32* %56)
  store %struct.tty_struct* %57, %struct.tty_struct** %18, align 8
  %58 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  %59 = icmp eq %struct.tty_struct* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.line*, %struct.line** %14, align 8
  %65 = getelementptr inbounds %struct.line, %struct.line* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @CONFIG_CHUNK(i8* %61, i32 %62, i32 %63, i8* %66, i32 1)
  br label %76

68:                                               ; preds = %54
  %69 = load %struct.line*, %struct.line** %14, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i8**, i8*** %13, align 8
  %73 = call i32 @chan_config_string(%struct.line* %69, i8* %70, i32 %71, i8** %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  %75 = call i32 @tty_kref_put(%struct.tty_struct* %74)
  br label %76

76:                                               ; preds = %68, %60
  br label %77

77:                                               ; preds = %76, %49
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %38, %29
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @CONFIG_CHUNK(i8*, i32, i32, i8*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @chan_config_string(%struct.line*, i8*, i32, i8**) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
