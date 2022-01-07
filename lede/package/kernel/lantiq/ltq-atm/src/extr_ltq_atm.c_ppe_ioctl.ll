; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_ioctl.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i64, i32, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.atm_dev = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@PPE_ATM_IOC_MAGIC = common dso_local global i64 0, align 8
@PPE_ATM_IOC_MAXNR = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@_IOC_READ = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4
@_IOC_WRITE = common dso_local global i32 0, align 4
@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@WAN_MIB_TABLE = common dso_local global %struct.TYPE_12__* null, align 8
@g_atm_priv_data = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32, i8*)* @ppe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppe_ioctl(%struct.atm_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @_IOC_TYPE(i32 %14)
  %16 = load i64, i64* @PPE_ATM_IOC_MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @_IOC_NR(i32 %19)
  %21 = load i64, i64* @PPE_ATM_IOC_MAXNR, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @ENOTTY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %176

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @_IOC_DIR(i32 %27)
  %29 = load i32, i32* @_IOC_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @VERIFY_WRITE, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @_IOC_SIZE(i32 %35)
  %37 = call i32 @access_ok(i32 %33, i8* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  br label %57

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @_IOC_DIR(i32 %42)
  %44 = load i32, i32* @_IOC_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* @VERIFY_READ, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @_IOC_SIZE(i32 %50)
  %52 = call i32 @access_ok(i32 %48, i8* %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %41
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %176

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %171 [
    i32 129, label %65
    i32 130, label %81
    i32 128, label %133
  ]

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 12
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 11
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 10
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 9
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 6
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WAN_MIB_TABLE, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 14
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 13
  store i32 0, i32* %75, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @copy_to_user(i8* %76, %struct.TYPE_15__* %9, i32 80)
  %78 = sext i32 %77 to i64
  %79 = sub i64 80, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  br label %174

81:                                               ; preds = %63
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WAN_MIB_TABLE, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 0), align 8
  %87 = sub i32 %85, %86
  %88 = load i64, i64* bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 8) to i64*), align 4
  %89 = call i32 @u64_add_u32(i64 %88, i32 %87, %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 8))
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 0), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 8, i32 1), align 4
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 12
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 8, i32 0), align 4
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 11
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WAN_MIB_TABLE, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 1), align 4
  %100 = sub i32 %98, %99
  %101 = load i64, i64* bitcast (%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 7) to i64*), align 4
  %102 = call i32 @u64_add_u32(i64 %101, i32 %100, %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 7))
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 1), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 7, i32 1), align 4
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 10
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 7, i32 0), align 4
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 9
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 6), align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 8
  store i32 %108, i32* %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WAN_MIB_TABLE, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 7
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WAN_MIB_TABLE, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  store i32 %116, i32* %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WAN_MIB_TABLE, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 5), align 8
  %122 = add nsw i64 %120, %121
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  store i64 %122, i64* %123, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 4), align 4
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32 %124, i32* %125, align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 3), align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %126, i32* %127, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @copy_to_user(i8* %128, %struct.TYPE_15__* %10, i32 80)
  %130 = sext i32 %129 to i64
  %131 = sub i64 80, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %8, align 4
  br label %174

133:                                              ; preds = %63
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @copy_from_user(%struct.TYPE_15__* %11, i8* %134, i32 80)
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @find_vpivci(i32 %137, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %133
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 2), align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_atm_priv_data, i32 0, i32 2), align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @copy_to_user(i8* %162, %struct.TYPE_15__* %11, i32 80)
  %164 = sext i32 %163 to i64
  %165 = sub i64 80, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %8, align 4
  br label %170

167:                                              ; preds = %133
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %167, %143
  br label %174

171:                                              ; preds = %63
  %172 = load i32, i32* @ENOIOCTLCMD, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %171, %170, %81, %65
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %60, %23
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @_IOC_TYPE(i32) #1

declare dso_local i64 @_IOC_NR(i32) #1

declare dso_local i32 @_IOC_DIR(i32) #1

declare dso_local i32 @access_ok(i32, i8*, i32) #1

declare dso_local i32 @_IOC_SIZE(i32) #1

declare dso_local i32 @copy_to_user(i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @u64_add_u32(i64, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @copy_from_user(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @find_vpivci(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
