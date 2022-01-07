; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_parse_gpg_output.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_parse_gpg_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8 }
%struct.signature_check = type { i8*, i8, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"[GNUPG:] \00", align 1
@sigcheck_gpg_status = common dso_local global %struct.TYPE_3__* null, align 8
@GPG_STATUS_EXCLUSIVE = common dso_local global i32 0, align 4
@GPG_STATUS_KEYID = common dso_local global i32 0, align 4
@GPG_STATUS_UID = common dso_local global i32 0, align 4
@GPG_STATUS_FINGERPRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.signature_check*)* @parse_gpg_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_gpg_output(%struct.signature_check* %0) #0 {
  %2 = alloca %struct.signature_check*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.signature_check* %0, %struct.signature_check** %2, align 8
  %9 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %10 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %212, %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %216

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %216

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @skip_prefix(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %212

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %208, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %211

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @skip_prefix(i8* %43, i8* %49, i8** %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %207

52:                                               ; preds = %42
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GPG_STATUS_EXCLUSIVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %217

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i8, i8* %73, align 4
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i8, i8* %81, align 4
  %83 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %84 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %83, i32 0, i32 1
  store i8 %82, i8* %84, align 8
  br label %85

85:                                               ; preds = %76, %68
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GPG_STATUS_KEYID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %146

95:                                               ; preds = %85
  %96 = load i8*, i8** %4, align 8
  %97 = call i8* @strchrnul(i8* %96, i8 signext 32)
  store i8* %97, i8** %5, align 8
  %98 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %99 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call i8* @xmemdupz(i8* %102, i32 %108)
  %110 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %111 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %95
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GPG_STATUS_UID, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %116
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8* %128, i8** %4, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call i8* @strchrnul(i8* %129, i8 signext 10)
  store i8* %130, i8** %5, align 8
  %131 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %132 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i8*, i8** %4, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = call i8* @xmemdupz(i8* %135, i32 %141)
  %143 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %144 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %126, %116, %95
  br label %146

146:                                              ; preds = %145, %85
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sigcheck_gpg_status, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @GPG_STATUS_FINGERPRINT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %206

156:                                              ; preds = %146
  %157 = load i8*, i8** %4, align 8
  %158 = call i8* @strchrnul(i8* %157, i8 signext 32)
  store i8* %158, i8** %5, align 8
  %159 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %160 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load i8*, i8** %4, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %4, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = call i8* @xmemdupz(i8* %163, i32 %169)
  %171 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %172 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %171, i32 0, i32 4
  store i8* %170, i8** %172, align 8
  store i32 9, i32* %7, align 4
  br label %173

173:                                              ; preds = %186, %156
  %174 = load i32, i32* %7, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %173
  %177 = load i8*, i8** %5, align 8
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  br label %189

181:                                              ; preds = %176
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %183, i8** %4, align 8
  %184 = load i8*, i8** %4, align 8
  %185 = call i8* @strchrnul(i8* %184, i8 signext 32)
  store i8* %185, i8** %5, align 8
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %7, align 4
  br label %173

189:                                              ; preds = %180, %173
  %190 = load i8*, i8** %4, align 8
  %191 = call i8* @strchrnul(i8* %190, i8 signext 10)
  store i8* %191, i8** %5, align 8
  %192 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %193 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %192, i32 0, i32 5
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %4, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = load i8*, i8** %4, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = call i8* @xmemdupz(i8* %196, i32 %202)
  %204 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %205 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %189, %146
  br label %211

207:                                              ; preds = %42
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %37

211:                                              ; preds = %206, %37
  br label %212

212:                                              ; preds = %211, %35
  %213 = load i8*, i8** %4, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = call i8* @strchrnul(i8* %214, i8 signext 10)
  store i8* %215, i8** %4, align 8
  br label %13

216:                                              ; preds = %30, %13
  br label %236

217:                                              ; preds = %66
  %218 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %219 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %218, i32 0, i32 1
  store i8 69, i8* %219, align 8
  %220 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %221 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %220, i32 0, i32 5
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @FREE_AND_NULL(i8* %222)
  %224 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %225 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %224, i32 0, i32 4
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @FREE_AND_NULL(i8* %226)
  %228 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %229 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %228, i32 0, i32 3
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @FREE_AND_NULL(i8* %230)
  %232 = load %struct.signature_check*, %struct.signature_check** %2, align 8
  %233 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @FREE_AND_NULL(i8* %234)
  br label %236

236:                                              ; preds = %217, %216
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
