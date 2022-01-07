; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_commons.c_display_default_config_file.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_commons.c_display_default_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ERR_NODEF_CONF_FILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s `-p /path/goaccess.conf`\0A\00", align 1
@ERR_NODEF_CONF_FILE_DESC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_default_config_file() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* (...) @get_config_file_path()
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @stdout, align 4
  %7 = load i8*, i8** @ERR_NODEF_CONF_FILE, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @stdout, align 4
  %10 = load i8*, i8** @ERR_NODEF_CONF_FILE_DESC, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  br label %18

12:                                               ; preds = %0
  %13 = load i32, i32* @stdout, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @free(i8* %16)
  br label %18

18:                                               ; preds = %12, %5
  ret void
}

declare dso_local i8* @get_config_file_path(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
