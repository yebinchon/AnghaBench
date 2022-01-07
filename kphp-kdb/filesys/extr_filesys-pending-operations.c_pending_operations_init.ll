; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operations_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operations_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@po_olddir = common dso_local global i32 0, align 4
@po_newdir = common dso_local global i32 0, align 4
@po_olddir_length = common dso_local global i8* null, align 8
@po_newdir_length = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_operations_init(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @zstrdup(i8* %5)
  store i32 %6, i32* @po_olddir, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @zstrdup(i8* %7)
  store i32 %8, i32* @po_newdir, align 4
  %9 = load i32, i32* @po_olddir, align 4
  %10 = call i8* @strlen(i32 %9)
  store i8* %10, i8** @po_olddir_length, align 8
  %11 = load i32, i32* @po_newdir, align 4
  %12 = call i8* @strlen(i32 %11)
  store i8* %12, i8** @po_newdir_length, align 8
  ret void
}

declare dso_local i32 @zstrdup(i8*) #1

declare dso_local i8* @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
