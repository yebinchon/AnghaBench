; ModuleID = '/home/carl/AnghaBench/git/extr_server-info.c_update_info_packs.c'
source_filename = "/home/carl/AnghaBench/git/extr_server-info.c_update_info_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%s/info/packs\00", align 1
@write_pack_info_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @update_info_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_info_packs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @get_object_directory()
  %6 = call i8* @mkpathdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @init_pack_info(i8* %7, i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @write_pack_info_file, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @update_info_file(i8* %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @free_pack_info()
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i8* @mkpathdup(i8*, i32) #1

declare dso_local i32 @get_object_directory(...) #1

declare dso_local i32 @init_pack_info(i8*, i32) #1

declare dso_local i32 @update_info_file(i8*, i32, i32) #1

declare dso_local i32 @free_pack_info(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
