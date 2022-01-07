; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_print_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_print_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%union.drbd_state = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c" %s = { cs:%s ro:%s/%s ds:%s/%s %c%c%c%c%c%c }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i8*, i64)* @print_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_st(%struct.drbd_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %union.drbd_state, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i8*, align 8
  %7 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %4, i32 0, i32 0
  store i64 %2, i64* %7, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i8* %1, i8** %6, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast %union.drbd_state* %4 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @drbd_conn_str(i32 %11)
  %13 = bitcast %union.drbd_state* %4 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @drbd_role_str(i32 %14)
  %16 = bitcast %union.drbd_state* %4 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @drbd_role_str(i32 %17)
  %19 = bitcast %union.drbd_state* %4 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @drbd_disk_str(i32 %20)
  %22 = bitcast %union.drbd_state* %4 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @drbd_disk_str(i32 %23)
  %25 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %4, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @is_susp(i64 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 115, i32 114
  %31 = trunc i32 %30 to i8
  %32 = bitcast %union.drbd_state* %4 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 97, i32 45
  %37 = trunc i32 %36 to i8
  %38 = bitcast %union.drbd_state* %4 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 112, i32 45
  %43 = trunc i32 %42 to i8
  %44 = bitcast %union.drbd_state* %4 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 117, i32 45
  %49 = trunc i32 %48 to i8
  %50 = bitcast %union.drbd_state* %4 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 70, i32 45
  %55 = sitofp i32 %54 to float
  %56 = bitcast %union.drbd_state* %4 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 78, i32 45
  %61 = trunc i32 %60 to i8
  %62 = call i32 @drbd_err(%struct.drbd_device* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i8 signext %31, i8 signext %37, i8 signext %43, i8 zeroext %49, float %55, i8 signext %61)
  ret void
}

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i8*, i32, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 zeroext, float, i8 signext) #1

declare dso_local i32 @drbd_conn_str(i32) #1

declare dso_local i32 @drbd_role_str(i32) #1

declare dso_local i32 @drbd_disk_str(i32) #1

declare dso_local i64 @is_susp(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
