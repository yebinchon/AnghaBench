; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_runtime.c___pm_runtime_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_runtime.c___pm_runtime_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i64 }

@RPM_ACTIVE = common dso_local global i32 0, align 4
@RPM_SUSPENDED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"runtime PM trying to activate child device %s but parent (%s) is not active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pm_runtime_set_status(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RPM_ACTIVE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @RPM_SUSPENDED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %196

24:                                               ; preds = %17, %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34, %24
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %196

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @RPM_ACTIVE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = call i32 (...) @device_links_read_lock()
  store i32 %63, i32* %9, align 4
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @rpm_get_suppliers(%struct.device* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @RPM_SUSPENDED, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @device_links_read_unlock(i32 %71)
  br label %73

73:                                               ; preds = %70, %58
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @spin_lock_irq(i32* %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = icmp ne %struct.device* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84, %73
  br label %161

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @RPM_SUSPENDED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = call i32 @atomic_add_unless(i32* %95, i32 -1, i32 0)
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = getelementptr inbounds %struct.device, %struct.device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %7, align 4
  br label %160

104:                                              ; preds = %88
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %109 = call i32 @spin_lock_nested(i32* %107, i32 %108)
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %104
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = getelementptr inbounds %struct.device, %struct.device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %115
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RPM_ACTIVE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 @dev_name(%struct.device* %130)
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = call i32 @dev_name(%struct.device* %132)
  %134 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %133)
  %135 = load i32, i32* @EBUSY, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %150

137:                                              ; preds = %121, %115, %104
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = getelementptr inbounds %struct.device, %struct.device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @RPM_SUSPENDED, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.device*, %struct.device** %6, align 8
  %146 = getelementptr inbounds %struct.device, %struct.device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = call i32 @atomic_inc(i32* %147)
  br label %149

149:                                              ; preds = %144, %137
  br label %150

150:                                              ; preds = %149, %128
  %151 = load %struct.device*, %struct.device** %6, align 8
  %152 = getelementptr inbounds %struct.device, %struct.device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @RPM_SUSPENDED, align 4
  store i32 %158, i32* %5, align 4
  br label %172

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %92
  br label %161

161:                                              ; preds = %160, %87
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @__update_runtime_status(%struct.device* %162, i32 %163)
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %161
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = getelementptr inbounds %struct.device, %struct.device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %167, %161
  br label %172

172:                                              ; preds = %171, %157
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = getelementptr inbounds %struct.device, %struct.device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = call i32 @spin_unlock_irq(i32* %175)
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.device*, %struct.device** %6, align 8
  %181 = call i32 @pm_request_idle(%struct.device* %180)
  br label %182

182:                                              ; preds = %179, %172
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @RPM_SUSPENDED, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = call i32 (...) @device_links_read_lock()
  store i32 %187, i32* %10, align 4
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = call i32 @rpm_put_suppliers(%struct.device* %188)
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @device_links_read_unlock(i32 %190)
  br label %192

192:                                              ; preds = %186, %182
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = call i32 @pm_runtime_enable(%struct.device* %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %192, %56, %21
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @device_links_read_lock(...) #1

declare dso_local i32 @rpm_get_suppliers(%struct.device*) #1

declare dso_local i32 @device_links_read_unlock(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__update_runtime_status(%struct.device*, i32) #1

declare dso_local i32 @pm_request_idle(%struct.device*) #1

declare dso_local i32 @rpm_put_suppliers(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
