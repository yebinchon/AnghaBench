; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_do_transaction_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_do_transaction_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@events = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Transaction didn't contain any event. Nothing output to the binlog.\0A\00", align 1
@LEV_FILESYS_XFS_END_TRANSACTION = common dso_local global i32 0, align 4
@transaction_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Transaction contains %lld events.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_transaction_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_transaction_end() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @events, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @kprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @LEV_FILESYS_XFS_END_TRANSACTION, align 4
  %8 = call i32* @memory_alloc_log_event(i32 %7, i32 8)
  store i32* %8, i32** %1, align 8
  %9 = load i32, i32* @transaction_id, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @events, align 4
  %13 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %6, %4
  ret void
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32* @memory_alloc_log_event(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
