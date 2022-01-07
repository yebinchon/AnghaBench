; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_replay_synchronization_point.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_replay_synchronization_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }
%struct.lev_copyexec_aux_transaction_header = type { i32 }

@last_decryption_failed_transaction_pos = common dso_local global i32 0, align 4
@instance_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Skip synchronization point. (transaction_id: %d, mask: 0x%x, instance_mask: 0x%x)\0A\00", align 1
@last_synchronization_point_id = common dso_local global i64 0, align 8
@last_synchronization_point_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replay_synchronization_point(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_copyexec_aux_transaction_header*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @decrypt_transaction(i32 %9, i32 %12, i32 %15, i32 %18, i64 %21, i8** %3, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* @last_decryption_failed_transaction_pos, align 4
  br label %71

29:                                               ; preds = %1
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @synchronization_point_transaction(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = bitcast i8* %35 to %struct.lev_copyexec_aux_transaction_header*
  store %struct.lev_copyexec_aux_transaction_header* %36, %struct.lev_copyexec_aux_transaction_header** %6, align 8
  %37 = load %struct.lev_copyexec_aux_transaction_header*, %struct.lev_copyexec_aux_transaction_header** %6, align 8
  %38 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_header, %struct.lev_copyexec_aux_transaction_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @instance_mask, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.lev_copyexec_aux_transaction_header*, %struct.lev_copyexec_aux_transaction_header** %6, align 8
  %48 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_header, %struct.lev_copyexec_aux_transaction_header* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @instance_mask, align 4
  %51 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %49, i32 %50)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @free(i8* %52)
  br label %71

54:                                               ; preds = %34
  %55 = load i64, i64* @last_synchronization_point_id, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* @last_synchronization_point_id, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* @last_synchronization_point_pos, align 4
  br label %68

68:                                               ; preds = %54, %29
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %43, %25
  ret void
}

declare dso_local i32 @decrypt_transaction(i32, i32, i32, i32, i64, i8**, i32*) #1

declare dso_local i64 @synchronization_point_transaction(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
