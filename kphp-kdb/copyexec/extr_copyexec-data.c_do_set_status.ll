; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_do_set_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_do_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_main_transaction_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"tr%d set status %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_set_status(%struct.lev_copyexec_main_transaction_status* %0) #0 {
  %2 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.lev_copyexec_main_transaction_status* %0, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %5 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %6 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %10 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %15 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_4__* @get_transaction_f(i32 %16, i32 1)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @transaction_change_status(%struct.TYPE_4__* %22, i32 %23)
  %25 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %26 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %31 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %36 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %41 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %46 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %51 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %56 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @get_transaction_f(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @transaction_change_status(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
