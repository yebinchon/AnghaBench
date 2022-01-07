
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SLmillibel ;


 scalar_t__ SL_MILLIBEL_MIN ;
 float log10f (float) ;
 scalar_t__ lroundf (float) ;

__attribute__((used)) static inline SLmillibel android_amplification_to_sles(float volumeLevel) {

    if (volumeLevel < 0.00000001)
        return SL_MILLIBEL_MIN;

    SLmillibel mb = lroundf(2000.f * log10f(volumeLevel));
    if (mb < SL_MILLIBEL_MIN)
        mb = SL_MILLIBEL_MIN;
    else if (mb > 0)
        mb = 0;
    return mb;
}
