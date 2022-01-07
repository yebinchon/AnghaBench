; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_slirp_kern.c_slirp_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_slirp_kern.c_slirp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32*, i64 }
%struct.uml_net_private = type { i64 }
%struct.slirp_data = type { i32, i32, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32** }
%struct.slirp_init = type { %struct.TYPE_2__ }

@ARPHRD_SLIP = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SLIRP backend - command line:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slirp_init(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uml_net_private*, align 8
  %6 = alloca %struct.slirp_data*, align 8
  %7 = alloca %struct.slirp_init*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.slirp_init*
  store %struct.slirp_init* %10, %struct.slirp_init** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.uml_net_private* @netdev_priv(%struct.net_device* %11)
  store %struct.uml_net_private* %12, %struct.uml_net_private** %5, align 8
  %13 = load %struct.uml_net_private*, %struct.uml_net_private** %5, align 8
  %14 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.slirp_data*
  store %struct.slirp_data* %16, %struct.slirp_data** %6, align 8
  %17 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %18 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %17, i32 0, i32 2
  %19 = load %struct.slirp_init*, %struct.slirp_init** %7, align 8
  %20 = getelementptr inbounds %struct.slirp_init, %struct.slirp_init* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_2__* %18 to i8*
  %22 = bitcast %struct.TYPE_2__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %24 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %26 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %29 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %28, i32 0, i32 4
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %31 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %30, i32 0, i32 3
  %32 = call i32 @slip_proto_init(i32* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @ARPHRD_SLIP, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  store i32 256, i32* %43, align 8
  %44 = load i32, i32* @IFF_NOARP, align 4
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %68, %2
  %49 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %50 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %48
  %59 = load %struct.slirp_data*, %struct.slirp_data** %6, align 8
  %60 = getelementptr inbounds %struct.slirp_data, %struct.slirp_data* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %48

71:                                               ; preds = %48
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.uml_net_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @slip_proto_init(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
