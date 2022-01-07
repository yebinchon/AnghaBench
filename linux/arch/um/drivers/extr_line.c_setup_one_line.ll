; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_setup_one_line.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_setup_one_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i8*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.tty_driver* }
%struct.tty_driver = type { i32 }
%struct.chan_opts = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Device is already open\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to allocate memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to register device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_one_line(%struct.line* %0, i32 %1, i8* %2, %struct.chan_opts* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.chan_opts*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.line*, align 8
  %13 = alloca %struct.tty_driver*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.device*, align 8
  store %struct.line* %0, %struct.line** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.chan_opts* %3, %struct.chan_opts** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load %struct.line*, %struct.line** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.line, %struct.line* %17, i64 %19
  store %struct.line* %20, %struct.line** %12, align 8
  %21 = load %struct.line*, %struct.line** %12, align 8
  %22 = getelementptr inbounds %struct.line, %struct.line* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.tty_driver*, %struct.tty_driver** %24, align 8
  store %struct.tty_driver* %25, %struct.tty_driver** %13, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.line*, %struct.line** %12, align 8
  %29 = getelementptr inbounds %struct.line, %struct.line* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  br label %128

35:                                               ; preds = %5
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = load %struct.line*, %struct.line** %12, align 8
  %41 = getelementptr inbounds %struct.line, %struct.line* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.line*, %struct.line** %12, align 8
  %46 = getelementptr inbounds %struct.line, %struct.line* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.line*, %struct.line** %12, align 8
  %48 = getelementptr inbounds %struct.line, %struct.line* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load %struct.tty_driver*, %struct.tty_driver** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @tty_unregister_device(%struct.tty_driver* %51, i32 %52)
  %54 = load %struct.line*, %struct.line** %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %57 = load i8**, i8*** %11, align 8
  %58 = call i32 @parse_chan_pair(i8* null, %struct.line* %54, i32 %55, %struct.chan_opts* %56, i8** %57)
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %44, %39
  br label %127

60:                                               ; preds = %35
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kstrdup(i8* %61, i32 %62)
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %130

70:                                               ; preds = %60
  %71 = load %struct.line*, %struct.line** %12, align 8
  %72 = getelementptr inbounds %struct.line, %struct.line* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.tty_driver*, %struct.tty_driver** %13, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @tty_unregister_device(%struct.tty_driver* %76, i32 %77)
  %79 = load %struct.line*, %struct.line** %12, align 8
  %80 = getelementptr inbounds %struct.line, %struct.line* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @kfree(i8* %81)
  br label %83

83:                                               ; preds = %75, %70
  %84 = load i8*, i8** %15, align 8
  %85 = load %struct.line*, %struct.line** %12, align 8
  %86 = getelementptr inbounds %struct.line, %struct.line* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.line*, %struct.line** %12, align 8
  %88 = getelementptr inbounds %struct.line, %struct.line* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load %struct.line*, %struct.line** %12, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %93 = load i8**, i8*** %11, align 8
  %94 = call i32 @parse_chan_pair(i8* %89, %struct.line* %90, i32 %91, %struct.chan_opts* %92, i8** %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %83
  %98 = load %struct.line*, %struct.line** %12, align 8
  %99 = getelementptr inbounds %struct.line, %struct.line* %98, i32 0, i32 2
  %100 = load %struct.tty_driver*, %struct.tty_driver** %13, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call %struct.device* @tty_port_register_device(%struct.TYPE_4__* %99, %struct.tty_driver* %100, i32 %101, i32* null)
  store %struct.device* %102, %struct.device** %16, align 8
  %103 = load %struct.device*, %struct.device** %16, align 8
  %104 = call i64 @IS_ERR(%struct.device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %107, align 8
  %108 = load %struct.device*, %struct.device** %16, align 8
  %109 = call i32 @PTR_ERR(%struct.device* %108)
  store i32 %109, i32* %14, align 4
  %110 = load %struct.line*, %struct.line** %12, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %113 = load i8**, i8*** %11, align 8
  %114 = call i32 @parse_chan_pair(i8* null, %struct.line* %110, i32 %111, %struct.chan_opts* %112, i8** %113)
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %83
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.line*, %struct.line** %12, align 8
  %121 = getelementptr inbounds %struct.line, %struct.line* %120, i32 0, i32 1
  store i8* null, i8** %121, align 8
  %122 = load %struct.line*, %struct.line** %12, align 8
  %123 = getelementptr inbounds %struct.line, %struct.line* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 @kfree(i8* %124)
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %59
  br label %128

128:                                              ; preds = %127, %33
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %66
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @tty_unregister_device(%struct.tty_driver*, i32) #1

declare dso_local i32 @parse_chan_pair(i8*, %struct.line*, i32, %struct.chan_opts*, i8**) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.device* @tty_port_register_device(%struct.TYPE_4__*, %struct.tty_driver*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
