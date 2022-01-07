; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_compute_tmp_dir_name.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_compute_tmp_dir_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@work_dir_length = common dso_local global i64 0, align 8
@szTmpDirName = common dso_local global i8* null, align 8
@tmp_dir_length = common dso_local global i64 0, align 8
@tmp_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@work_dir = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_tmp_dir_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_tmp_dir_name() #0 {
  %1 = load i64, i64* @work_dir_length, align 8
  %2 = add nsw i64 %1, 1
  %3 = load i8*, i8** @szTmpDirName, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = add nsw i64 %2, %4
  store i64 %5, i64* @tmp_dir_length, align 8
  %6 = load i64, i64* @tmp_dir_length, align 8
  %7 = add nsw i64 %6, 1
  %8 = call i32 @zmalloc(i64 %7)
  store i32 %8, i32* @tmp_dir, align 4
  %9 = load i32, i32* @tmp_dir, align 4
  %10 = load i8*, i8** @work_dir, align 8
  %11 = load i8*, i8** @szTmpDirName, align 8
  %12 = call i64 @sprintf(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load i64, i64* @tmp_dir_length, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @zmalloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
