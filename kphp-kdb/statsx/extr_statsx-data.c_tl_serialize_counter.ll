; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_tl_serialize_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_tl_serialize_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TL_STATSX_SEX = common dso_local global i32 0, align 4
@MAX_SEX = common dso_local global i32 0, align 4
@TL_STATSX_AGE = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i32 0, align 4
@TL_STATSX_MSTATUS = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@TL_STATSX_POLIT = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@TL_STATSX_SECTION = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@TL_STATSX_CITY = common dso_local global i32 0, align 4
@TL_STATSX_GEOIP_COUNTRY = common dso_local global i32 0, align 4
@TL_STATSX_COUNTRY = common dso_local global i32 0, align 4
@TL_STATSX_SOURCE = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4
@TL_STATSX_VIEWS = common dso_local global i32 0, align 4
@TL_STATSX_VISITORS = common dso_local global i32 0, align 4
@TL_STATSX_SEX_AGE = common dso_local global i32 0, align 4
@MAX_SEX_AGE = common dso_local global i32 0, align 4
@TL_STATSX_MONTHLY = common dso_local global i32 0, align 4
@TL_STATSX_WEEKLY = common dso_local global i32 0, align 4
@TL_STATSX_DELETES = common dso_local global i32 0, align 4
@TL_STATSX_VERSION = common dso_local global i32 0, align 4
@TL_STATSX_EXPIRES = common dso_local global i32 0, align 4
@TL_STATSX_EXTRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_serialize_counter(%struct.counter* %0, i32 %1) #0 {
  %3 = alloca %struct.counter*, align 8
  %4 = alloca i32, align 4
  store %struct.counter* %0, %struct.counter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.counter*, %struct.counter** %3, align 8
  %6 = call i32 @assert(%struct.counter* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TL_STATSX_SEX, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.counter*, %struct.counter** %3, align 8
  %13 = getelementptr inbounds %struct.counter, %struct.counter* %12, i32 0, i32 16
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAX_SEX, align 4
  %16 = call i32 @tl_serialize_list(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TL_STATSX_AGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.counter*, %struct.counter** %3, align 8
  %24 = getelementptr inbounds %struct.counter, %struct.counter* %23, i32 0, i32 15
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAX_AGE, align 4
  %27 = call i32 @tl_serialize_list(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TL_STATSX_MSTATUS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.counter*, %struct.counter** %3, align 8
  %35 = getelementptr inbounds %struct.counter, %struct.counter* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX_MSTATUS, align 4
  %38 = call i32 @tl_serialize_list(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TL_STATSX_POLIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.counter*, %struct.counter** %3, align 8
  %46 = getelementptr inbounds %struct.counter, %struct.counter* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_POLIT, align 4
  %49 = call i32 @tl_serialize_list(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TL_STATSX_SECTION, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.counter*, %struct.counter** %3, align 8
  %57 = getelementptr inbounds %struct.counter, %struct.counter* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MAX_SECTION, align 4
  %60 = call i32 @tl_serialize_list(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TL_STATSX_CITY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.counter*, %struct.counter** %3, align 8
  %68 = getelementptr inbounds %struct.counter, %struct.counter* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tl_serialize_list_2(i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @TL_STATSX_GEOIP_COUNTRY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.counter*, %struct.counter** %3, align 8
  %78 = getelementptr inbounds %struct.counter, %struct.counter* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @tl_serialize_list_2a(i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @TL_STATSX_COUNTRY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.counter*, %struct.counter** %3, align 8
  %88 = getelementptr inbounds %struct.counter, %struct.counter* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @tl_serialize_list_2a(i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @TL_STATSX_SOURCE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.counter*, %struct.counter** %3, align 8
  %98 = getelementptr inbounds %struct.counter, %struct.counter* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAX_SOURCE, align 4
  %101 = call i32 @tl_serialize_list(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @TL_STATSX_VIEWS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.counter*, %struct.counter** %3, align 8
  %109 = getelementptr inbounds %struct.counter, %struct.counter* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @tl_store_int(i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @TL_STATSX_VISITORS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.counter*, %struct.counter** %3, align 8
  %119 = getelementptr inbounds %struct.counter, %struct.counter* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @tl_store_int(i32 %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @TL_STATSX_SEX_AGE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.counter*, %struct.counter** %3, align 8
  %129 = getelementptr inbounds %struct.counter, %struct.counter* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MAX_SEX_AGE, align 4
  %132 = call i32 @tl_serialize_list(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @TL_STATSX_MONTHLY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.counter*, %struct.counter** %3, align 8
  %140 = getelementptr inbounds %struct.counter, %struct.counter* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @tl_store_int(i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @TL_STATSX_WEEKLY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.counter*, %struct.counter** %3, align 8
  %150 = getelementptr inbounds %struct.counter, %struct.counter* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @tl_store_int(i32 %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @TL_STATSX_DELETES, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.counter*, %struct.counter** %3, align 8
  %160 = getelementptr inbounds %struct.counter, %struct.counter* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @tl_store_int(i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @TL_STATSX_VERSION, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.counter*, %struct.counter** %3, align 8
  %170 = getelementptr inbounds %struct.counter, %struct.counter* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @tl_store_int(i32 %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @TL_STATSX_EXPIRES, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load %struct.counter*, %struct.counter** %3, align 8
  %180 = getelementptr inbounds %struct.counter, %struct.counter* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @tl_store_int(i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @TL_STATSX_EXTRA, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.counter*, %struct.counter** %3, align 8
  %190 = call i32 @tl_serialize_subcnt_list(%struct.counter* %189)
  br label %191

191:                                              ; preds = %188, %183
  ret void
}

declare dso_local i32 @assert(%struct.counter*) #1

declare dso_local i32 @tl_serialize_list(i32, i32) #1

declare dso_local i32 @tl_serialize_list_2(i32) #1

declare dso_local i32 @tl_serialize_list_2a(i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_serialize_subcnt_list(%struct.counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
